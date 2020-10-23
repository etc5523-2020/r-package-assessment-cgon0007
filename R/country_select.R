#' Country Select Input in table
#'
#' 
#'
#' @author chenjie gong
#'
#' @param x A country names
#' 
#' 
#' 
#' @export
#'
#' 
#' 
#' 
#' 
#' @examples
#' \dontrun{
#' countryInput( x = coronavirus$location)
#' }
#'
#'
#'
#'
#'
countryInput <- function(x) {
  
  shiny::selectInput(
                     label = label,
                     choices = sort(unique(x)),
                     selected = "Guinea")
}