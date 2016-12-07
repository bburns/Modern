
# Modern

Modern is an attempt to modernize Emacs Lisp, APIs and user interface, inspired
by Scheme and ErgoEmacs - it will act as a testbed before attempting to move
some functionality into Emacs core.


## Goals

* Three layer structure - Lisp, Emacs API, and User Interface (keys, mouse, menu, toolbar)
* Organize the global namespace by using `noun-verb` names where appropriate
* Follow principle of least-surprise - make function and variable names guessable, and add cross-references where appropriate
* Define ergonomic keybindings using Meta (Alt) instead of Control key, following modern conventions where possible


## About

Lisp is really easy to hack on, but something thrown together in a few minutes
back in the 1960s could have ended up being a permanent feature of the language -
hence the muddle that is Common Lisp, and parts of Emacs, e.g. the
non-orthogonality of `(plist-get list key)` vs `(assoc key list)`.

So, it would be nice if the Lisp and Emacs APIs could be refactored, which would
be simplest to do in a module with new functionality and aliased crossreferences - i.e.,
don't take anything away, just add to the existing API where desired.

Also, the keybindings were designed before modern user interfaces and keyboards,
so it would be nice to overhaul them for new users. The user interface layer
will also include mouse, menu, and toolbar updates.



## License

GPL

