#' Function to launch the shiny application
#' 
#' @title launch_app
#' @author chenjie
#' 
#' @return shinyapp
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







