
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![stability-stable](https://img.shields.io/badge/stability-stable-green.svg)](https://github.com/joethorley/stability-badges#stable)
[![Travis-CI Build
Status](https://travis-ci.org/poissonconsulting/yesno.svg?branch=master)](https://travis-ci.org/poissonconsulting/yesno)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/poissonconsulting/yesno?branch=master&svg=true)](https://ci.appveyor.com/project/poissonconsulting/yesno)
[![codecov](https://codecov.io/gh/poissonconsulting/yesno/branch/master/graph/badge.svg)](https://codecov.io/gh/poissonconsulting/yesno)
[![License:
GPL2](https://img.shields.io/badge/License-GPL2-blue.svg)](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/yesno)](https://cran.r-project.org/package=yesno)
[![CRAN
Downloads](http://cranlogs.r-pkg.org/badges/grand-total/yesno)](https://cran.r-project.org/package=yesno)

# yesno

## Introduction

Provides two functions.

The first, `yesno()`, asks a custom yes-no question with three variable
responses.

The order and phrasing of the possible responses varies randomly to
ensure the user consciously chooses (as opposed to automatically types
their response).

The second, `yesno2()`, ask a custom yes-no question with two responses.

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

## Installation

To install the current release version from CRAN

    install.packages("yesno")

To install the developmental version from GitHub

    # install.packages("devtools")
    devtools::install_github("poissonconsulting/yesno")

or alternatively install (and update) from the Poisson R Archive Site
([PoisRAS](https://github.com/poissonconsulting/drat))

    # install.packages("drat")
    drat::addRepo("poissonconsulting")
    install.packages("yesno")

## Contribution

Please note that this project is released with a [Contributor Code of
Conduct](CONDUCT.md). By participating in this project you agree to
abide by its terms.

## Inspiration

  - The `yesno()` function is based on the internal function with the
    same name from [devtools](https://github.com/hadley/devtools)
    (modified to return TRUE if the user answers yes).
