library(shiny)
library(ggplot2)
library(readr)
library(readxl)
library(plotly)
library(writexl)
library(DT)
library(scales)

shinyServer(function(input, output) {
  
  callModule(reg_sv,"reg")
  
  
  
})