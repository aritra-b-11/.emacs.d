Introduction
============


The main user entry point is `el-search-pattern'.  This command
prompts for a `pcase' pattern and searches the current buffer for
matching expressions by iteratively `read'ing buffer contents.  For
any match, point is put at the beginning of the expression found
(unlike isearch which puts point at the end of matches).

Why is it based on `pcase'?  Because pattern matching (and the
ability to combine destructuring and condition testing) is well
suited for this task.  In addition, pcase allows to add specialized
pattern types and to combine them with other patterns in a natural
and transparent way out of the box.

It doesn't matter how the code is actually formatted.  Comments are
ignored, and strings are treated as atomic objects, their contents
are not being searched.


Example 1: if you enter

   97

at the prompt, this will find any occurrence of the number 97 in
the code, but not 977 or (+ 90 7) or "My string containing 97".
But it will find anything `eq' to 97 after reading, e.g. #x61 or
?a.


Example 2: If you enter the pattern

  `(defvar ,_)

you search for all defvar forms that don't specify an init value.

The following will search for defvar forms with a docstring whose
first line is longer than 70 characters:

  `(defvar ,_ ,_
     ,(and s (guard (< 70 (length (car (split-string s "\n")))))))


When a search pattern is processed, the searched buffer is current
with point at the beginning of the currently tested expression.


Convenience
===========

For pattern input, the minibuffer is put into `emacs-lisp-mode'.

Any input PATTERN is silently transformed into (and exp PATTERN)
so that you can always refer to the whole currently tested
expression via the variable `exp'.


Example 3:

If you want to search a buffer for symbols that are defined in
"cl-lib", you can use this pattern

  (guard (and (symbolp exp)
              (when-let ((file (symbol-file exp)))
                (string-match-p "cl-lib\\.elc?$" file))))


,----------------------------------------------------------------------
| Q: "But I hate `pcase'!  Can't we just do without?"                 |
|                                                                     |
| A: Respect that you kept up until here! Just use (guard CODE), where|
| CODE is any normal Elisp expression that returns non-nil when and   |
| only when you have a match.  Use the variable `exp' to refer to     |
| the currently tested expression.  Just like in the last example!    |
`----------------------------------------------------------------------


It's cumbersome to write out the same complicated pattern
constructs in the minibuffer again and again.  You can define your
own pcase pattern types for the purpose of el-search with
`el-search-defpattern'.  It is just like `pcase-defmacro', but the
effect is limited to this package.  See C-h f `el-search-pattern'
for a list of predefined additional pattern forms.

Some additional pattern definitions can be found in the file
"el-search-x.el".


Replacing
=========

You can replace expressions with command `el-search-query-replace'.
You are queried for a (pcase) pattern and a replacement expression.
For each match of the pattern, the replacement expression is
evaluated with the bindings created by the pcase matching in
effect, and printed to produce the replacement string.

Example: In some buffer you want to swap the two expressions at the
places of the first two arguments in all calls of function `foo',
so that e.g.

  (foo 'a (* 2 (+ 3 4)) t)

becomes

  (foo (* 2 (+ 3 4)) 'a t).

This will do it:

   M-x el-search-query-replace RET
   `(foo ,a ,b . ,rest) RET
   `(foo ,b ,a . ,rest) RET

Type y to replace a match and go to the next one, r to replace
without moving, SPC to go to the next match and ! to replace all
remaining matches automatically.  q quits.  n is like SPC, so that
y and n work like in isearch (meaning "yes" and "no") if you are
used to that.

It is possible to replace a match with multiple expressions using
"splicing mode".  When it is active, the replacement expression
must evaluate to a list, and is spliced instead of inserted into
the buffer for any replaced match.  Use s to toggle splicing mode
in a `el-search-query-replace' session.


Suggested key bindings
======================

   (define-key emacs-lisp-mode-map [(control ?S)] #'el-search-pattern)
   (define-key emacs-lisp-mode-map [(control ?%)] #'el-search-query-replace)

   (define-key isearch-mode-map [(control ?S)] #'el-search-search-from-isearch)
   (define-key isearch-mode-map [(control ?%)] #'el-search-replace-from-isearch)

   (define-key el-search-read-expression-map [(control ?S)] #'exit-minibuffer)

The bindings in `isearch-mode-map' let you conveniently switch to
"el-search" searching from isearch.  The binding in
`el-search-read-expression-map' allows you to hit C-S twice to
start a search for the last search pattern.


Bugs, Known Limitations
=======================

- Replacing: in some cases the reader syntax of forms
is changing due to reading+printing.  "Some" because we can treat
that problem in most cases.

- Similarly: Comments are normally preserved (where it makes
sense).  But when replacing like `(foo ,a ,b) -> `(foo ,b ,a)

in a content like

  (foo
    a
    ;;a comment
    b)

the comment will be lost.

FIXME: when we have resumable sessions, pause and warn about this case.


 Acknowledgments
 ===============

Thanks to Stefan Monnier for corrections and advice.


TODO:

- implement backward searching

- Make `el-search-pattern' accept an &optional limit, at least for
  the non-interactive use case?

- improve docstrings

- Make it work in comments, too? (-> `parse-sexp-ignore-comments').
  Related: should the pattern `symbol' also match strings that
  contain matches for a symbol so that it's possible to replace
  also occurrences of a symbol in docstrings?

- handle more reader syntaxes, e.g. #n, #n#

- Implement sessions; add multi-file support based on iterators.  A
  file list is read in (or the user can specify an iterator as a
  variable).  The state in the current buffer is just (buffer
  . marker).  Or should this be abstracted into an own lib?  Could
  be named "files-session" or so.

- Make `el-search--format-replacement' work non-heuristically.
  Idea: When replacing, for every variable V bound by the search
  pattern that directly corresponds to some text T, provide some
  "match data" V -> T.  Use this when formatting the replacement.
  Maybe use a special marker to "paste" in expressions, like (paste
  V), whereby the `paste' flag lands in the replacement and can be
  replaced textually afterwards.
