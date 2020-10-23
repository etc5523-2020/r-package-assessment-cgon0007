#' Add Theme 
#'
#'
#'
#' @author chenjie gong
#'
#' @param t A theme
#'
#' @export
#'
#'



plot_theme <- function(t) {
  t +
    ggplot2::theme_classic() +
    ggplot2::theme(axis.text.x = element_text(angle = 45, hjust = 1), # set some detail information size and text angle
                         axis.text = element_text(size = 20),
                         axis.title.y = element_text(size = 25),
                         plot.title = element_text(size = 25))
} 
  
  
  
  