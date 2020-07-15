library(shiny)

shinyServer(function(input, output) {

    output$generador_mapa <- renderLeaflet({
        gen_mapa(filtro = input$selEdo)        
    })

})
