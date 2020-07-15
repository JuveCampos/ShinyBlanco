# Librerias
library(shiny)
library(tidyverse)
library(sf)
library(leaflet)


# Base de datos ----
# REGISTRO DEL PROCESAMIENTO 
# Obtención de shape simplificado
# st_read("www/01_Datos/mun2019gw/mun2019gw.shp") %>% 
#   st_simplify(dTolerance = 0.001) %>%
#   st_write("www/01_Datos/mpios.geojson")
  
# Municipios 
mpios <- st_read("www/mpios.geojson")
edos <- c("Todo el País", 
          as.character(sort(unique(mpios$NOM_ENT))))

# Funciones propias ---- 
gen_mapa  <- function(filtro){
  
  if (filtro == "Todo el País"){
    filtro <- edos[-1]
  }
  
  mpios_filtrados <- mpios %>% 
    filter(NOM_ENT %in% filtro) 
    
  mpios_filtrados %>% 
    leaflet() %>% 
    addTiles() %>% 
    addPolygons()

}


