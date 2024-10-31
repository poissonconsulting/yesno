<!-- README.md is generated from README.Rmd. Please edit that file -->

# yesno <img src="man/figures/logo.png" align="right" />

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R-CMD-check](https://github.com/poissonconsulting/yesno/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/poissonconsulting/yesno/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/poissonconsulting/yesno/graph/badge.svg)](https://app.codecov.io/gh/poissonconsulting/yesno)
[![License:
MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/license/mit/)
[![CRAN
status](https://www.r-pkg.org/badges/version/yesno)](https://cran.r-project.org/package=yesno)
![CRAN downloads](https://cranlogs.r-pkg.org/badges/yesno)
<!-- badges: end -->

## Introduction

Provides two functions.

The first, `yesno()`, asks a custom yes-no question with three variable
responses.

The order and phrasing of the possible responses varies randomly to
ensure the user consciously chooses (as opposed to automatically types
their response).

The second, `yesno2()`, ask a yes-no question with two custom responses.

## Installation

To install the latest release from [CRAN](https://cran.r-project.org)

    install.packages("yesno")

To install the developmental version from
[GitHub](https://github.com/poissonconsulting/yesno)

    # install.packages("remotes")
    remotes::install_github("poissonconsulting/yesno")

## Demonstration

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
