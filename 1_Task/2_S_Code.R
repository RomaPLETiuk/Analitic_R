
if (!require(leaflet)) {
  install.packages("leaflet")
  library(leaflet)
}
if (!require(readxl)) {
  install.packages("readxl")
  library(readxl)
}


data <- read_excel("Data.xlsx")

# Розділити координати на широту і довготу
coordinates <- strsplit(data$Coordinates, ", ")
latitudes <- as.numeric(sapply(coordinates, `[`, 1))
longitudes <- as.numeric(sapply(coordinates, `[`, 2))

# Створити карту leaflet
map <- leaflet(data = data) %>%
  addTiles() %>%
  addMarkers(lat = latitudes, lng = longitudes, 
             popup = ~paste(ObjectsName, "<br>Type of Damage:", TypeOfDemages,
                            "<br>Source:", Source,
                            "<br><a href='", LinkToSourse, "' target='_blank'>Link to Source</a>",
                            "<br><img src='", Pictures, "' width='150' height='100'>", sep = ""))

# Відобразити карту
map
