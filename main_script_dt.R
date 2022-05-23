#Load DT, dplyr
library(DT)
library(dplyr)
library(here)
library(tidyverse)
library(magrittr)
library(RCurl)

# Load file for General Table
generalData <- read_csv(file = here::here("data", "ictr_table_general.csv"))
generalData

# Create a General Table
ICTR_general <- generalData %>%
  DT::datatable(
    style = 'auto',
    colnames = c('Link' = 2, 'Unique Factor' = 4, 'Types of Data' = 5, 'Summary' = 11),
    rownames = FALSE,
    caption = 'General Informatics Tools',
    escape = FALSE,
    filter = "top",
    extensions = list("Scroller"),
    options = list(autoWidth = TRUE, pageLength = 10, scrollY = TRUE,
                   scrollX = TRUE, scrollCollapse = TRUE, fillContainer = TRUE,
                   columnDefs = list(list(width = '600px', targets = c(10)),
                                     list(width = '400px', targets = c(3)),
                                     list(width = '200px', targets = "_all")),
                   initComplete = JS(
                     "function(settings, json) {",
                     "$('body').css({'font-family': 'Calibri'});",
                     "$(this.api().table().header()).css({'backgroundColor': '#3f546f'});",
                     "$(this.api().table().header()).css({'color': '#fff'});",
                     "}"))
  )

ICTR_general

# Load file for Omics Table
omicsData <- read_csv(file = here::here("data", "ictr_table_omics.csv"))
omicsData

# Create an Omics Table
ICTR_omics <- omicsData %>%
  DT::datatable(
    style = 'auto',
    width = '200%',
    colnames = c('Link' = 2, 'Unique Factor' = 4, 'Types of Data' = 5, 'Summary' = 10),
    rownames = FALSE,
    caption = 'Omics Informatics Tools',
    escape = FALSE,
    filter = "top",
    extensions = list("Scroller"),
    options = list(autoWidth = TRUE, pageLength = 10, scrollY = TRUE,
                   scrollX = TRUE, scrollCollapse = TRUE, fillContainer = TRUE,
                   columnDefs = list(list(width = '600px', targets = c(9)),
                                     list(width = '400px', targets = c(3)),
                                     list(width = '200px', targets = "_all")),
                   initComplete = JS(
                     "function(settings, json) {",
                     "$('body').css({'font-family': 'Calibri'});",
                     "$(this.api().table().header()).css({'backgroundColor': '#3f546f'});",
                     "$(this.api().table().header()).css({'color': '#fff'});",
                     "}"))
  )

ICTR_omics

# Load file for Imaging Table
imagingData <- read_csv(file = here::here("data", "ictr_table_imaging.csv"))
imagingData

# Create an Imaging Table
ICTR_imaging <- imagingData %>%
  DT::datatable(
    style = 'auto',
    width = '200%',
    colnames = c('Link' = 2, 'Unique Factor' = 4, 'Types of Data' = 5, 'Summary' = 10),
    rownames = FALSE,
    caption = 'Imaging Informatics Tools',
    escape = FALSE,
    filter = "top",
    extensions = list("Scroller"),
    options = list(autoWidth = TRUE, pageLength = 10, scrollY = TRUE,
                   scrollX = TRUE, scrollCollapse = TRUE, fillContainer = TRUE,
                   columnDefs = list(list(width = '600px', targets = c(9)),
                                     list(width = '400px', targets = c(3)),
                                     list(width = '200px', targets = "_all")),
                   initComplete = JS(
                     "function(settings, json) {",
                     "$('body').css({'font-family': 'Calibri'});",
                     "$(this.api().table().header()).css({'backgroundColor': '#3f546f'});",
                     "$(this.api().table().header()).css({'color': '#fff'});",
                     "}"))
  )

ICTR_imaging