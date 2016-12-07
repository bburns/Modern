
# Modern

Modern is an attempt to modernize Lisp and Emacs APIs and keybindings, inspired
by Scheme and ErgoEmacs - it will act as a testbed before attempting to move
functionality into the Emacs core (probably unsuccessfully, but I'll use it
anyway!) .


## Goals

* Separate and independent modules for Lisp, Emacs API, crossreference, keys, mouse, menu, toolbar, modeline
* Organize the global namespace by using `noun-verb` names where appropriate
* Follow principle of least-surprise - make function and variable names guessable, and add cross-references where appropriate, to aid in guessing correct names
* Add 'missing' commands
* Define ergonomic keybindings predominantly using Meta (Alt) instead of Control key, which follow standard/modern application conventions where possible
* Define a modal mode which drops the Meta key
* Follow Windows mouse conventions for left/right clicks
* Display startup process and progress
* Make key bindings easily discoverable with tables
* Make toolbar commands match `noun-verb` commands where possible
* Define new functions, variables, and commands in existing Emacs convention, define aliases in `noun-verb` form, to ease adoption


## About

Lisp is really easy to hack on, but something thrown together in a few minutes
back in the 1960s could have ended up being a permanent feature of the language.
Hence the muddle that is Common Lisp, and parts of Emacs, e.g. the
non-orthogonality of `(plist-get plist prop)` vs `(assoc key list)`, and many
other inconsistencies.

Basically, the Lisp and Emacs APIs need refactoring, which is best to do in a
module with aliases, and functions to automatically translate or display new
names, if desired.

Also, the keybindings were designed before modern user interfaces and keyboards,
so it would be nice to overhaul them for new users.

Emacs should be friendly towards new users, out of the box - the old timers
can easily turn off anything they don't want (like this layer!).


## License

GPL

