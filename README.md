
<!-- README.md is generated from README.Rmd. Please edit that file -->

# covid\_tracker

<!-- badges: start -->

[![R build
status](https://github.com/etc5523-2020/r-package-assessment-cgon0007/workflows/R-CMD-check/badge.svg)](https://github.com/etc5523-2020/r-package-assessment-cgon0007/actions)
<!-- badges: end -->

The goal of covid\_tracker is to provid the covid-19 data and function
for the people to explore.

## Installation

You can install the released version of covid\_tracker from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("covid_tracker")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("etc5523-2020/r-package-assessment-cgon0007")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(covid)
library(tibble)
coronavirus
#> # A tibble: 200,960 x 9
#>    date  location location_type location_code location_code_t… data_type value
#>    <chr> <chr>    <chr>         <chr>         <chr>            <chr>     <dbl>
#>  1 7/6/… Afghani… country       AF            iso_3166_2       cases_new   791
#>  2 6/6/… Afghani… country       AF            iso_3166_2       cases_new   582
#>  3 5/6/… Afghani… country       AF            iso_3166_2       cases_new   915
#>  4 18/5… Afghani… country       AF            iso_3166_2       deaths_n…     4
#>  5 8/6/… Afghani… country       AF            iso_3166_2       cases_new   575
#>  6 12/6… Afghani… country       AF            iso_3166_2       cases_new   656
#>  7 9/6/… Afghani… country       AF            iso_3166_2       cases_new   542
#>  8 4/6/… Afghani… country       AF            iso_3166_2       cases_new   787
#>  9 17/5… Afghani… country       AF            iso_3166_2       deaths_n…     1
#> 10 19/5… Afghani… country       AF            iso_3166_2       deaths_n…     5
#> # … with 200,950 more rows, and 2 more variables: lat <dbl>, long <dbl>
n_countries(coronavirus)
#> Warning: Unknown or uninitialised column: `country`.
#> [1] 0
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
