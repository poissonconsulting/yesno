
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Travis-CI Build Status](https://travis-ci.org/poissonconsulting/yesno.svg?branch=master)](https://travis-ci.org/poissonconsulting/yesno) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/poissonconsulting/yesno?branch=master&svg=true)](https://ci.appveyor.com/project/poissonconsulting/yesno) [![codecov](https://codecov.io/gh/poissonconsulting/yesno/branch/master/graph/badge.svg)](https://codecov.io/gh/poissonconsulting/yesno) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/yesno)](https://cran.r-project.org/package=yesno) [![CRAN Downloads](http://cranlogs.r-pkg.org/badges/grand-total/yesno)](https://cran.r-project.org/package=yesno)

yesno
=====

Introduction
------------

Provides a single function `yesno()` which asks a custom yes-no question with variable responses.

The order and phrasing of the possible responses varies randomly to ensure the user consciously chooses (as opposed to automatically types their response).

Demonstration
-------------

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

Installation
------------

To install the current release version from CRAN

    install.packages("yesno")

To install the developmental version from GitHub

    # install.packages("devtools")
    devtools::install_github("poissonconsulting/yesno")

Information
-----------

For more information install and load the `yesno` package and type `?yesno`.

Contribution
------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

Inspiration
-----------

-   The single function is based on the internal `yesno()` function from [devtools](https://github.com/hadley/devtools) (modified to return TRUE if the user answers yes).
