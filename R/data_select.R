#' date setup
#'
#' @param inputId inputid
#' @param label label
#' @param x x function
#'
#' @return
#' @export
#'
#' 
selectdate <- function(inputId,label="select one date",x){
  x_range <-range(x,na.rm = TRUE)
  shiny::selectInput(inputId ,label = label,
                     min=x_range[1],max=x_range[2],value=x_range[2])
  
}
