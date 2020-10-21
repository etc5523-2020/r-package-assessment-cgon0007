#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
#
#here is the package you need
library(shiny)
library(coronavirus)
library(shinythemes)
library(tidyverse)
library(plotly)
library(ggplot2)

# Define UI for covid application that draws plots and table.
ui <- navbarPage(
    theme = shinytheme("cerulean"),#the theme you can choice, cerulean is my like
    title = "COVID-19 TRACKER", #my app name
    tabPanel("TOP-10 NEW CASES",  #tab panel name
             fluidRow(
                 dateInput("dateInput1", "Select Date"),  #this is set the date input
                 hr(),
                 helpText("Data from the Package coronavirus."), # here is text, you can put text you want to shows
                 plotlyOutput("countryBar", height = "600px") #here set my plot output,this output name is countrybar which is link with the server.
             )), #here is the my tab panel 1
    tabPanel("TOP-10 DEATH", #the tab panel name
             fluidRow(
                 dateInput("dateInput2", "Select Date"), # set date input
                 hr(),
                 helpText("Data from the Package coronavirus."), # text some infomation in here
                 plotlyOutput("countryBar2", height = "600px") #here set my plot output,this output name is countrybar2 which is link with the server.
             )),  # this is the tab panel2
    tabPanel("TOP-10 RECOVER:D", #the tab panel name 3
             fluidRow(
                 dateInput("dateInput3", "Select Date"), #set date input
                 hr(),
                 helpText("Data from the Package coronavirus."), # text some information
                 plotlyOutput("countryBar3", height = "600px") #here set my plot output,this output name is countrybar3 which is link with the server.
             )), # this is the tab panel 3
    tabPanel("Confirmed by country",
             fluidRow(
                 selectInput("countryInput1", "Select Country", NULL),
                 plotlyOutput("countryLine", height = "600px")  #here set my plot output,this output name is countryline which is link with the server.
             )), # this the tab panel 4
    tabPanel("Table", # tab panel name
             fluidRow(
                 selectInput("countryInput2", "Select Country", NULL), # set input
                 hr(),
                 helpText("-------------if you want to see the new info, turn the last pages ----------."), # text some information
                 DT::dataTableOutput("countryTable") #here set my plot output,this output name is countrytable which is link with the server.
             )), # this is thr tab panel 5
    tabPanel("About",
             h1("AUTHOR"),
             h3("chenjie gong :)"),
             h3("build from",
                img(src = "https://www.rstudio.com/wp-content/uploads/2014/04/shiny.png", height = "50px"),
                "by",
                img(src = "https://www.rstudio.com/wp-content/uploads/2014/07/RStudio-Logo-Blue-Gray.png", height = "35px"),
                "."),
             h1("PURPOSE"),
             h4("The original intention of creating this app was to let people see the data of the epidemic more intuitively, rather than the news of COVID-19 all over the world, but they could not understand the epidemic situation in various places intuitively. I think that when people are very intuitive and simply see the changes and numbers of the epidemic, people can no longer be manipulated by politics or the media (for example, thinking that the epidemic does not exist, the government deceives the people) and can be straightforward Judge this epidemic.

~This app can intuitively display the countries with the most diagnoses, deaths, and recovery, and it can also directly see the changes during the epidemic in different countries, and use this as a basis to judge whether the epidemic prevention measures in different countries are effective.

                ~And at the end, there is a table to see all the data in detail, which is convenient for people to check."),
             h2("CONTACT ME"),
             h4("cgon0007@student.monash.edu"), #my email
             ),  #here is the section about , put the purpose in here and some info about me.
    tabPanel("REFERENCE",
             h2("shiny,coronavirus,tidyverse,plotly,ggplot2"),#here is the reference information
             h4("
  Winston Chang, Joe Cheng, JJ Allaire, Yihui Xie and Jonathan McPherson (2020). shiny:
  Web Application Framework for R. R package version 1.5.0.
  https://CRAN.R-project.org/package=shiny

A BibTeX entry for LaTeX users is

  @Manual{,
    title = {shiny: Web Application Framework for R},
    author = {Winston Chang and Joe Cheng and JJ Allaire and Yihui Xie and Jonathan McPherson},
    year = {2020},
    note = {R package version 1.5.0},
    url = {https://CRAN.R-project.org/package=shiny},
  }"),
            h1("."),
             h4("Wickham et al., (2019). Welcome to the tidyverse. Journal of Open Source Software,
  4(43), 1686, https://doi.org/10.21105/joss.01686

A BibTeX entry for LaTeX users is

  @Article{,
    title = {Welcome to the {tidyverse}},
    author = {Hadley Wickham and Mara Averick and Jennifer Bryan and Winston Chang and Lucy D'Agostino McGowan and Romain François and Garrett Grolemund and Alex Hayes and Lionel Henry and Jim Hester and Max Kuhn and Thomas Lin Pedersen and Evan Miller and Stephan Milton Bache and Kirill Müller and Jeroen Ooms and David Robinson and Dana Paige Seidel and Vitalie Spinu and Kohske Takahashi and Davis Vaughan and Claus Wilke and Kara Woo and Hiroaki Yutani},
    year = {2019},
    journal = {Journal of Open Source Software},
    volume = {4},
    number = {43},
    pages = {1686},
    doi = {10.21105/joss.01686},
  } "),
            h1("."),
             h4(" C. Sievert. Interactive Web-Based Data Visualization with R, plotly, and shiny. Chapman
  and Hall/CRC Florida, 2020.

A BibTeX entry for LaTeX users is

  @Book{,
    author = {Carson Sievert},
    title = {Interactive Web-Based Data Visualization with R, plotly, and shiny},
    publisher = {Chapman and Hall/CRC},
    year = {2020},
    isbn = {9781138331457},
    url = {https://plotly-r.com},
  }"),
            h1("."),
             h4("Rami Krispin and Jarrett Byrnes (2020). coronavirus: The 2019 Novel Coronavirus
  COVID-19 (2019-nCoV) Dataset. R package version 0.3.0.
  https://CRAN.R-project.org/package=coronavirus

A BibTeX entry for LaTeX users is

  @Manual{,
    title = {coronavirus: The 2019 Novel Coronavirus COVID-19 (2019-nCoV) Dataset},
    author = {Rami Krispin and Jarrett Byrnes},
    year = {2020},
    note = {R package version 0.3.0},
    url = {https://CRAN.R-project.org/package=coronavirus},
  }"),
            h1("."),
             h4("H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York,
  2016.

A BibTeX entry for LaTeX users is

  @Book{,
    author = {Hadley Wickham},
    title = {ggplot2: Elegant Graphics for Data Analysis},
    publisher = {Springer-Verlag New York},
    year = {2016},
    isbn = {978-3-319-24277-4},
    url = {https://ggplot2.tidyverse.org},
  }"),

             ) #here is the reference information
)

# Define server logic required to draw plots and a table
server <- function(input, output, session) {

    dat <- reactiveVal(read_tsv("coronavirus.tsv")) #here is the my data

    observe({
        req(dat())
        updateDateInput(session, "dateInput1", value = max(dat()$date), min = min(dat()$date), max = max(dat()$date))
    }) #here is the observe the tab1 , and set the date's range from the datebegin and the oct-3

    observe({
        req(dat(), input$dateInput1)
        output$countryBar <- renderPlotly({
            dat() %>%
                filter(date == input$dateInput1, data_type == "cases_new", location_type == "country") %>%
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
                labs(x = NULL, y = "New Cases") #set lab

        })
    }) #here is the output tab1
    observe({
        req(dat())
        updateDateInput(session, "dateInput2", value = max(dat()$date), min = min(dat()$date), max = max(dat()$date))
    })  #here is the observe the tab2 , and set the date's range from the datebegin and the oct-3


    observe({
        req(dat(), input$dateInput2) # here is output plot2
        output$countryBar2 <- renderPlotly({
            dat() %>%
                filter(date == input$dateInput2, data_type == "deaths_new", location_type == "country") %>%
                top_n(10, value) %>%
                arrange(desc(value)) %>%
                mutate(location = factor(location, levels = location)) %>%
                ggplot(aes(location, value)) +
                geom_col(aes(fill = location)) +
                ggtitle("Top 10 Deaths Country") +
                theme_classic() +
                theme(axis.text.x = element_text(angle = 38, hjust = 1), # set some detail information size and text angle
                      axis.text = element_text(size = 18),
                      axis.title.y = element_text(size = 22),
                      plot.title = element_text(size = 22)) +
                labs(x = NULL, y = "New Deaths")

        })
    }) #here is out put tab 2
    observe({
        req(dat())
        updateDateInput(session, "dateInput3", value = max(dat()$date), min = min(dat()$date), max = max(dat()$date))
    })  #here is the observe the tab3 , and set the date's range from the datebegin and the oct-3


    observe({
        req(dat(), input$dateInput3) #the server output plot3
        output$countryBar3 <- renderPlotly({
            dat() %>%
                filter(date == input$dateInput3, data_type == "recovered_new", location_type == "country") %>%
                top_n(10, value) %>%
                arrange(desc(value)) %>%
                mutate(location = factor(location, levels = location)) %>%
                ggplot(aes(location, value)) +
                geom_col(aes(fill = location)) +
                ggtitle("Top 10 Recover Country") +
                theme_classic() +
                theme(axis.text.x = element_text(angle = 38, hjust = 1), # set some detail information size and text angle
                      axis.text = element_text(size = 18),
                      axis.title.y = element_text(size = 22),
                      plot.title = element_text(size = 26)) +
                labs(x = NULL, y = "New recover")
        })
    }) #here is output tab 3


    observe({
        req(dat())
        countries <- dat() %>%
            filter(location_type == "country") %>%
            .$location %>%
            unique()
        updateSelectInput(session, "countryInput1", choices = countries)
    })  #here is the observe the tab5 , and set the country range from the data$country


    observe({
        req(dat(), input$countryInput1)
        output$countryLine <- renderPlotly({
            dat() %>%
                filter(location == input$countryInput1, data_type == "cases_new") %>%
                ggplot(aes(date, value)) +
                geom_line(color="green") +
                geom_point(color="yellow",alpha = 0.7)+
                geom_smooth(alpha = 0.3)+
                ggtitle(paste("New Cases in", input$countryInput1)) + #here is my proud set, the title change from the you choice country.
                labs(x = NULL, y = "New Cases") +
                theme_classic() +  # set some detail information size
                theme(axis.text = element_text(size = 15),
                      axis.title.y = element_text(size = 22),
                      plot.title = element_text(size = 22))
        })
    })  #here is output tab 4

    observe({
        req(dat())
        countries <- dat() %>%
            filter(location_type == "country") %>%
            .$location %>%
            unique()
        updateSelectInput(session, "countryInput2", choices = countries)
    })  #here is the observe the tab5 , and set the country range from the data$country


    observe({
        req(dat(), input$countryInput2)
        output$countryTable <- DT::renderDataTable({
            dat() %>%
                filter(location == input$countryInput2) %>%
                select(date, data_type, value) %>%
                pivot_wider(date, names_from = data_type, values_from = value) %>%
                arrange(date) %>% #set arrange by date
                DT::datatable(options = list(scrollX = TRUE, pageLength = 25))
        })  #here is output tab 5
    })
}

#here is the run the application
shinyApp(ui = ui, server = server)
