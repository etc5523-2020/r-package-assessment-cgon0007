#' Function to launch the shiny application
#' @author chenjie
#' 
#' @return shinyapp
#' 
#' @description This function can be used to launch shiny app in package.
#' 
#' @examples
#' \dontrun{
#' launch_app()
#' }
#'
#' @export
launch_app <- function() {
  appDir <- system.file("app",package = "covid")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `covid`.", call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}







