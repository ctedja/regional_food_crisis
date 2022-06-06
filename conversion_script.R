# Load ----
# The usual suspects
library(readxl)
library(knitr)
library(tidyverse)
library(lubridate)
library(httr)
library(sf)
library(sp)
library(shiny)
library(plotly)
library(htmltools)
# For matching inconsistent administrative level names
library(stringdist)

getwd()
setwd("C:\\Users\\clinton.tedja\\OneDrive - World Food Programme\\Documents (OneDrive)\\Learning Resources\\web-app\\regional_app")


# Read our data
data <- read_excel("C:\\Users\\clinton.tedja\\OneDrive - World Food Programme\\Documents (OneDrive)\\Learning Resources\\web-app\\regional_app\\data_entry.xlsx", sheet = "Sheet1")

library(jsonlite)

library(rjson)
library(RJSONIO)
list1 <- vector(mode="list", length=2)
list1[[1]] <- c("a", "b", "c")
list1[[2]] <- c(1, 2, 3)

exportJson <- toJSON(list1)
write(exportJson, "test.json")


test <- toJSON(data, pretty=TRUE,auto_unbox=TRUE, indent = 1  )
write_json(test, "C:\\Users\\clinton.tedja\\OneDrive - World Food Programme\\Documents (OneDrive)\\Learning Resources\\web-app\\regional_app\\data.json")

glimpse(test)

