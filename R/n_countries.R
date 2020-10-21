#' count the number of countried in dataset
#'
#' @param data a dataset containing a `country` column
#'
#' @return
#' @export
#'
#' @examples
n_countries<-function(data){
  dplyr::n_distinct(data$country)
}