#' Select type
#' 
#' 
#' @description  This function builded to help people select the different type
#' 
#' @param data the dateset
#' @param choices cases_new,deaths_new,recovered_new
#' 
#' @return  shiny
#' @author chenjie gong
#' 
#'
#'
#' @export

type_select  <- function( data, choices) {
  selecttype(data,
               choices = c("cases_new",
                           "deaths_new",
                           "recovered_new"), 
               selected = "cases_new"
  )
}
