# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(tidyverse)
library(ggplot2)
source('Global.R')
fluidPage(
  titlePanel("S&P500 Stock Screener"),
  
  # Create a new Row in the UI for selectInputs
  fluidRow(
    column(4,
           selectInput("Sector",
                       "Sector:",
                       c("All",  unique(data$Sector)%>%as.vector() 
                        ))
    ),
    column(4,
                  selectInput("Exchange",
                              "Exchange:",
                              c("All", unique(data$Exchange)%>%as.vector() 
                              ))
    ),
    column(4,
           selectInput("Rcm",
                       "Recommendation:",
                       c("All",  unique(data$Rcm)%>%as.vector() 
                       ))
    )
  ),
  # Create a new row for the table.
  DT::dataTableOutput("table")
)

