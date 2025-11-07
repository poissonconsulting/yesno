# Yes No with Two Custom Responses

Asks a custom yes-no question with two responses (by default 'Yes' or
'No'). Returns a flag indicating which response the user choose. It is
designed to be used in situations where a user needs to choose one of
two affirmative options.

## Usage

``` r
yesno2(..., yes = "Yes", no = "No")
```

## Arguments

- ...:

  Objects to paste and then output to produce the question.

- yes:

  A string of the first response.

- no:

  A string of the second response.

## Value

A flag indicating whether the user selected the first (TRUE) or second
(FALSE) response.

## Details

The objects are first pasted without separators and collapsed using
`[paste0](..., collapse = "")` before being output using
[`cat()`](https://rdrr.io/r/base/cat.html).

Selection of a 0 (to exit) causes the code to throw an error.

## See also

[`yesno()`](https://poissonconsulting.github.io/yesno/reference/yesno.md)

## Examples

``` r
if (FALSE) { # \dontrun{
yesno2("Do you like this question?", yes = "I really do")
} # }
```
