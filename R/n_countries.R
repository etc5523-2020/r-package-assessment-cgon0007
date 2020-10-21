
#' count the number of countried in dataset
#'
#' @param data a dataset containing a `country` column
#'
#'@examples
#' n_countries(coronavirus)
#'
#' @return sum of country during this epdemic 
#' @export
n_countries<-function(data){
  dplyr::n_distinct(data$country)
}


