# yesno

## Introduction

Provides two functions.

The first,
[`yesno()`](https://poissonconsulting.github.io/yesno/reference/yesno.md),
asks a custom yes-no question with three variable responses.

The order and phrasing of the possible responses varies randomly to
ensure the user consciously chooses (as opposed to automatically types
their response).

The second,
[`yesno2()`](https://poissonconsulting.github.io/yesno/reference/yesno2.md),
ask a yes-no question with two custom responses.

## Installation

To install the latest release from [CRAN](https://cran.r-project.org)

``` R
install.packages("yesno")
```

To install the developmental version from
[GitHub](https://github.com/poissonconsulting/yesno)

``` R
# install.packages("remotes")
remotes::install_github("poissonconsulting/yesno")
```

## Demonstration

``` R
yesno("Do you like ", R.Version()$nickname ,"?")
Do you like Bug in Your Hair?
1: Definitely
2: No way
3: No

Selection: 1
[1] TRUE

yesno("Do you like ", R.Version()$nickname ,"?")
Do you like Bug in Your Hair?
1: No way
2: Uhhhh... Maybe?
3: I agree

Selection: 2
[1] FALSE

> yesno2("Do you like this question?", yes = "I really do")
Do you like this question?
1: I really do
2: No

Selection: 1
[1] TRUE
```

## Contribution

Please report any
[issues](https://github.com/poissonconsulting/yesno/issues).

[Pull requests](https://github.com/poissonconsulting/yesno/pulls) are
always welcome.

## Code of Conduct

Please note that the yesno project is released with a [Contributor Code
of
Conduct](https://poissonconsulting.github.io/yesno/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
