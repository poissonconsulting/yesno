# Yes No with Variable Responses

Asks a custom yes-no question with randomly varying responses. Returns a
flag indicating whether the user answered yes or no. It is designed to
be used in situations where the users needs to confirm an affirmative
action.

## Usage

``` r
yesno(...)
```

## Arguments

- ...:

  Objects to paste and then output to produce the question.

## Value

A flag indicating whether the user answered yes or no.

## Details

The objects are first pasted without separators and collapsed using
`[paste0](..., collapse = "")` before being output using
[`cat()`](https://rdrr.io/r/base/cat.html).

The order and phrasing of the possible responses varies randomly to
ensure the user consciously chooses (as opposed to automatically types
their response).

A total of three responses are offered - two of which correspond to No
and one of which corresponds to Yes. The possible responses are skewed
to No to reduce the chances that a blindly-typing user mistakenly
chooses an affirmative action. For the same reason, selection of
uncertain responses such as 'Uhhh... Maybe?' is considered to be a No.
Selection of a 0 (to exit) is also considered to be No. Questions should
be phrased accordingly.

## See also

[`yesno2()`](https://poissonconsulting.github.io/yesno/reference/yesno2.md)

## Examples

``` r
if (FALSE) { # \dontrun{
yesno("Do you like ", R.Version()$nickname, "?")
} # }
```
