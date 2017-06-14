#Spatial R and Shiny
#Homework Assignment 6
#June 13, 2017
#Stephanie Gad and Monique Schafer
#with a little help from Frew  (that is very much appreciated!)
library(shiny)
library(raster)
library(rgdal)
landsat <- stack("Landsat7.tif")

ui <- fluidPage(
  selectInput(inputId = "Red", label = "R:",
              choices = c(1, 2, 3, 4, 5), selected = 3),
  
  selectInput(inputId = "Green", label = "G:",
              choices = c(1, 2, 3, 4, 5), selected = 2),
  
  selectInput(inputId = "Blue", label = "B:",
              choices = c(1, 2, 3, 4, 5), selected = 1),
  
  plotOutput("plot1")
)

server <- function(input, output) {
  output$plot1<- renderPlot({
    plotRGB(landsat,
            r = as.numeric(input$Red),
            g = as.numeric(input$Green),
            b = as.numeric(input$Blue),
            stretch = "lin"
    )
  })
}

#load to website
shinyApp(ui = ui, server = server)


