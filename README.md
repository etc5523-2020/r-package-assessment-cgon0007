
<!-- README.md is generated from README.Rmd. Please edit that file -->

# covid

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
install.packages("covid")
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

## shiny part

User can choose to run shinyChromosome installed on local computers
(Windows, Mac or Linux) for a more preferable experience. hint(the app
means that:covid19-tracker-shinyapp) Step 1: Install R and RStudio

Before running the app you will need to have R and RStudio installed
(tested with R 3.5.0 and RStudio 1.1.419). Please check CRAN
(<https://cran.r-project.org/>) for the installation of R. Please check
<https://www.rstudio.com/> for the installation of RStudio.

Step 2: Install the R Shiny package and other packages required by
shinyChromosome

Start an R session using RStudio and run these lines:

### try an http CRAN mirror if https CRAN mirror doesn’t work

`install.packages("shiny")` `install.packages("ggplot2")`
`install.packages("shinythemes")` `install.packages("coronavirus")`

### install shiny:covid\_tracker

`install.packages("devtools")`
`devtools::install_github("~cgon0007/app", force=TRUE)`

Step 3: Start the app

Start an R session using RStudio and run these lines:

`shiny::runGitHub("app", "cgon0007")`

This command will download the code of shinyapp from GitHub to a
temporary directory of your computer and then launch the app in the web
browser. Once the web browser was closed, the downloaded code of app
would be deleted from your computer. Next time when you run this command
in RStudio, it will download the source code of appcovid19tracker from
GitHub to a temporary directory again. This process is frustrating since
it takes some time to download the code of shinyChromosome from GitHub.

Users are suggested to download the source code of shinyChromosome from
GitHub to a fixed directory of your computer, such as ‘E:’ on Windows.a
zip file named ‘app-master.zip’ would be downloaded to the disk of your
computer. Move this file to ‘E:’ and unzip this file. Then a directory
named ‘app’ would be generated in ‘E:’.

Then you can start the app by running these lines in RStudio.

`library(shiny)` `runApp("E:/apps/app-master", launch.browser = TRUE)`
