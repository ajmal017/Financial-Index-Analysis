library(leaflet)

raw_data <- read.csv("assignment-02-data-formated.csv")

siteLeaflet <- leaflet(data = raw_data) %>% addTiles() %>%
  addMarkers(~longitude, ~latitude, popup = ~as.character(location)) 

siteLeaflet