# yesno 0.1.0

- Added `yesno2` function to provide two custom responses.

# yesno 0.0.2

- Replaced `yesno` function's `string` argument with `...` to allow it to take variable arguments.
The arguments are first pasted without separators and collapsed using `paste0(..., collapse = "")` before being output using `cat`.

# yesno 0.0.1

Implemented `yesno` function with single `string` argument.
