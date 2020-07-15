
library(shiny)
library(shinycssloaders)

shinyUI(
  fluidPage(
    fluidRow(
      column(3, 
             selectInput(inputId = "selEdo", 
                         label = "Seleccione Estado", 
                         choices = edos,
                         selected = edos[1])
             ), 
      column(9, 
             withSpinner(leafletOutput("generador_mapa"))
             )
    )
  )  
  
  
    
    
)

