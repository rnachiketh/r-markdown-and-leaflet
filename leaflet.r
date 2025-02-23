---
date: "jan 20 2025"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
```

# sept 13 2016

```{r chunk 1}
place <- c("16 Buckingham Drive", "Eastampton Community School", "Rancocas Valley Regional High School", "Buttonwood Park", "Rutgers University", "University of California, Los Anglees", "10941 Strathmore Drive", "Aurora", "Coffee Bean", "many dollars spent, many books unread, much music heard", "St. Agnes Hospital", "Talvandi Arain", "Sialkot, Punjab", "Dharamsala, Himachal Pradesh", "Magnolia Hotel", "Wu Tang Klang", "Shrine of Bullhe Shah", "St. Joseph Hospital", "Lahore, Punjab", "Ratajoa (Pool of Blood)" )

place_links <- c("<a href='https://www.gps-coordinates.net/street-view/@39.992445,-74.765458,h182,p5,z1'>Home</a>", "<a href='http://www.eastampton.k12.nj.us/'>Primary</a>", "<a href='http://rvrhs.com/'>High School</a>", "<a href='https://www.youtube.com/watch?v=WH_PC4UOoY4'>Tennis</a>", "<a href='http://newbrunswick.rutgers.edu/?utm_source=rutgers.edu&utm_medium=web&utm_campaign=uwide_sliver'>College</a>", "<a href='http://socialsciences.ucla.edu/departments/'>UCLA</a>", "<a href='https://en.wikipedia.org/wiki/Bhavacakra'>Westwood</a>", "<a href='http://cherrycreekschools.org/Pages/default.aspx'>Centennial</a>", "<a href='https://psychcentral.com/blog/archives/2012/04/15/caffeines-effects-on-your-thinking/'>many cups of joe</a>", "<a href='https://shop.uclastore.com/c-318-bookzone.aspx'>many dollars spent, many books unread</a>", "<a href='http://www.stagnes.org/150/'>where it all began</a>", "<a href='https://en.wikipedia.org/wiki/Partition_of_India'>daadkay dee praanee pind</a>", "<a href='https://en.wikipedia.org/wiki/Sialkot'>Ami day naandkay</a>", "<a href='https://www.youtube.com/watch?v=nWY0Tyhu9MM'>Madhyamaka</a>", "<a href='http://www.starwoodhotels.com/gx/property/overview/index.html?propertyID=4703&SWAQ=958P'>The Special Day</a>", "<a href='https://en.wikipedia.org/wiki/Klang_(city)'>Klang</a>", "<a href='https://www.youtube.com/watch?v=B-pTz8ZM0nw'>Bullhe Shah</a>", "<a href='https://www.sclhealth.org/locations/saint-joseph-hospital/'>My Seeds</a>", "<a href='https://en.wikipedia.org/wiki/Lahore'>Lahore</a>", "<a href='http://press.princeton.edu/titles/4250.html'>Pind</a>")

lat <- c(39.9921999, 39.99891909999999, 40.0024695, 39.99760750000001, 40.5203204, 34.068921,
         34.0672062, 39.615245, 39.615245, 34.0627396, 39.9260163, 31.5188331, 31.5188331, 
         32.5179603, 32.21904200000001, 3.044917, 31.12107223150165, 39.7464498, 31.4054167, 31.1914511)
lng <- c(-74.76549999999997, -74.75457560000001, -74.7829026, -74.7633318, -74.43591049999998,
         -118.44518110000001, -118.45007800000002, -104.79553599999997, -118.44504139999998, -118.44456500000001, 
         -75.1697964, 75.74659750000001, 74.50091680000003, 76.32340369999997, -104.99235140000002,
         101.44556209999996, 74.44769382476807, -104.9715971, 74.16363130000002, 74.05791850000003)

df <- data.frame(place, place_links, lat, lng)

library(leaflet)
df %>%
  leaflet() %>%
  addTiles() %>%
  addMarkers(lat=lat, lng=lng, popup=place_links, clusterOptions=markerClusterOptions)
```