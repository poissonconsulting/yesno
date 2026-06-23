<!-- NEWS.md is maintained by https://cynkra.github.io/fledge, do not edit -->

# yesno 0.1.3.9003

- Same as previous version.


# yesno 0.1.3.9002

- Same as previous version.


# yesno 0.1.3.9001

* Add fledge-bump workflow
* Add fledge-tag-on-merge workflow
* ci: Use workflows for fledge
* ci: Review env vers when installing, more careful foreign runs, format with `clang-format`
* ci: Sync
* ci: Sync
* ci: Need to install R on Ubuntu 24.04
* ci: Need to install R on Ubuntu 24.04 for fledge
* ci: Use Ubuntu 24.04 and styler PR
* ci: Use Ubuntu 24.04 for fledge, squash
* ci: Trigger run
* ci: Latest changes
* ci: Use pkgdown branch
* ci: Updates from duckdb
* ci: Install via R CMD INSTALL ., not pak
* ci: Bump version of upload-artifact action


# yesno (development version)

<!-- NEWS.md is maintained by https://fledge.cynkra.com, contributors should not edit this file -->

# yesno 0.1.3

- Minor housekeeping.

# yesno 0.1.2.9000

- Same as previous version.

# yesno 0.1.2

- More house-keeping.

# yesno 0.1.1

- Minor house-keeping.

# yesno 0.1.0

- Added `yesno2` function to provide two custom responses.

# yesno 0.0.2

- Replaced `yesno` function's `string` argument with `...` to allow it to take variable arguments.
The arguments are first pasted without separators and collapsed using `paste0(..., collapse = "")` before being output using `cat`.

# yesno 0.0.1

Implemented `yesno` function with single `string` argument.
