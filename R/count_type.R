#' count cases type
#' 
#' @description Get case count at one date
#'
#' 
#' @param date A string, The date at which the case numbers are required
#' 
#' @param data_type A string, The type of case numbers required - either "Confirmed", "Deaths" or "Recovered"
#' 
#' @return An integer, sum of covid cases of required type and date
#'
#'
#'
#' 
#' @examples 
#' \dontrun{
#' get_case_count(data,
#'   date = "2020-10-01", case_type = "cases_new")
#'   
#' count_type( date = "4/4/20", case_type = "cases_new")
#' }
#' @importFrom dplyr %>%
#' @export
count_type <- function(date, data_type){
  return(sum(data_type %>%
               dplyr::filter(date == date) %>%
               dplyr::ungroup() %>%
               dplyr::select(data_type)))
}
