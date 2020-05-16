

# Load the ggplot2 package which provides

library(ggplot2)
library(dplyr)
source('Global.R')
function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- data
    if (input$Sector != "All") {
      data <- data %>% filter(Sector == input$Sector)
    }
    if (input$Exchange != "All") {
      data <- data %>% filter(Exchange == input$Exchange)
    }
    if (input$Rcm != "All") {
      data <- data %>% filter(Rcm == input$Rcm)
    }
    data
  }))
  
}