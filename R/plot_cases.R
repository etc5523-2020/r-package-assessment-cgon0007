#' plot top 10 cases new contries
#'
#' @param data the coronavirus data
#' @param p the top10 bar plot
#'
#' @return
#' @export
#'
plot_cases <-function(data,p){
  return(
      data() %>%
        filter(date == 4/4/2020, data_type == "cases_new", location_type == "country") %>%
        top_n(10, value) %>% # filter 10 country
        arrange(desc(value)) %>% # filter by  decrese trend
        mutate(location = factor(location, levels = location)) %>%
        ggplot(aes(location, value)) +
        geom_col(aes(fill = location)) +  #here is plot set
        ggtitle("Top 10 New Cases Country") + # set plot title
        theme_classic() + # set theme
        theme(axis.text.x = element_text(angle = 45, hjust = 1), # set some detail information size and text angle
              axis.text = element_text(size = 20),
              axis.title.y = element_text(size = 25),
              plot.title = element_text(size = 25)) +
        labs(x = NULL, y = "New Cases") 
    )
}