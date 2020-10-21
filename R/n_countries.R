#' count the number of countried in dataset
#' @title n_countries
#' @return sum of country during this epdemic
#' @param data a dataset containing a `country` column
#' @description it help people count the country
#' @examples
#' n_countries(coronavirus)
#'
#' @return sum of country during this epdemic 
#' @export
n_countries<-function(data){
  dplyr::n_distinct(data$country)
}


