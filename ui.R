library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(bs4Dash)
library(shiny)
library(ggplot2)
library(dplyr)
library(htmltools)
library(shinyWidgets)
library(highcharter)
library(reactable)

source("modulos/modulo_tablas.R")
#bs4dash_status(primary = "#5E81AC", danger = "#BF616A")


ui<-fluidPage(
  
  dashboardPage(
    bs4DashNavbar(title="Regresion interactiva",
                  leftUi = bs4DropdownMenu(badgeStatus = "danger",type = "notifications",
                                           messageItem(
                                             message = "Este Dashboard lo desarrollamos en el primer nivel de nuestro curso Dashbord con shiny nivel 1",
                                             from = "DataIdea",
                                             href = "https://docs.google.com/forms/d/1DpbK3050XY9pTSqNIg0nnWivSrJH_gsS32zQrlxQhBM/edit?usp=sharing",
                                             time = Sys.Date()
                                           )
                                           
                  ),
                  rightUi = bs4DropdownMenu(badgeStatus = "danger",type = "notifications",
                                            
                                            
                                            messageItem(
                                              message = "Y tambien tenemos un segundo nivel,en donde exploramos otras capacidades asi como el uso de modelos de machine learning",
                                              from = "DataIdea",
                                              href = "https://docs.google.com/forms/d/1DpbK3050XY9pTSqNIg0nnWivSrJH_gsS32zQrlxQhBM/edit?usp=sharing",
                                              time = Sys.Date()
                                            )
                                            
                  )
                  
    ),
    dashboardSidebar(sidebarMenu(
      # menuItem("Primer modulo",tabName = "modulo1",icon = icon("paper-plane")),
      # menuItem("Segundo modulo",tabName = "modulo2",icon = icon("crosshairs")),
      # menuItem("Tercer modulo",tabName = "modulo3",icon = icon("th")),
      menuItem("Primer modulo",tabName = "reg",icon = icon("compass"))
      # menuItem("Quinto modulo",tabName = "modulo5",icon = icon("globe-americas")),
      # menuItem("Sexto modulo",tabName = "modulo6",icon = icon("coins"))
    )),
    dashboardBody(tabItems(
      
      
      reg_ui("reg"))    
      # tabItem(tabName = "modulo5",
      #         fluidRow(box(
      #             downloadButton("descarga", "Descargar datos"),  
      #             sliderInput("tamano","Tamano",min=0,max=100,value=50),
      #             sliderInput("peso","Peso",min=0,max=30,value=15),
      #             selectInput("color","Seleccion de color",choices = c("rojo"="red","azul"="blue","verde"="green","navy")),
      #             selectInput("inventario","Seleccion de inventario",
      #                         choices = c("Lunes"="Inventario.lunes","Martes"="Inventario.martes","Miercoles"="Inventario.miercoles",
      #                                     "Jueves"="Inventario.jueves","Viernes"="Inventario.viernes")),
      #             width = 2,height = "460"),
      #             box(title="Mapa",status = "success",leafletOutput("mapa"),collapsible=TRUE,width = 5,height = "460"),
      #             box(title="Datos",status = "primary",dataTableOutput("tabla"),collapsible=TRUE,width=5,height = "460"),width = 10),
      #         fluidRow(box(title="Estado del Inventario",status = "primary",plotlyOutput("graf_barra"),collapsible=TRUE,width=12,height = "100%"),
      #         )),
      # tabItem(tabName = "modulo6",
      #         sidebarLayout(
      #             sidebarPanel(userBox(
      #                 id = "userbox",
      #                 title = userDescription(
      #                     title = "Bitcoin",
      #                     subtitle = "Data Historica",
      #                     type = 2,
      #                     image = "https://img.icons8.com/color/100/000000/bitcoin--v1.png"
      #                 ),
      #                 status = "primary",
      #                 gradient = TRUE,
      #                 background = "primary",
      #                 boxToolSize = "xl",
      #                 "Capitalizacion de mercado",textOutput("btc_market"),
      #                 tags$br(),
      #                 "Volumen de transacciones",textOutput("btc_vol"),
      #                 tags$br(),
      #                 downloadButton("descarga_btc", "Descargar datos"),
      #                 maximizable = TRUE,
      #                 elevation = 5,
      #                 width = 12,
      #                 height = 220)),
      #             mainPanel(box(status = "danger",plotlyOutput("btc",height = "230px"),maximizable = TRUE,elevation = 4,width = 12))),
      #         
      #         sidebarLayout(
      #             sidebarPanel(userBox(
      #                 id = "userbox",
      #                 title = userDescription(
      #                     title = "Ethereum",
      #                     subtitle = "Data Historica",
      #                     type = 2,
      #                     image = "https://img.icons8.com/fluent/128/000000/ethereum.png"
      #                 ),
      #                 status = "primary",
      #                 gradient = TRUE,
      #                 background = "primary",
      #                 boxToolSize = "xl",
      #                 "Capitalizacion de mercado",textOutput("eth_market"),
      #                 tags$br(),
      #                 "Volumen de transacciones",textOutput("eth_vol"),
      #                 tags$br(),
      #                 downloadButton("descarga_eth", "Descargar datos"),
      #                 maximizable = TRUE,
      #                 elevation = 5,
      #                 width = 12,
      #                 height = 220)),
      #             mainPanel(box(status = "danger",plotlyOutput("eth",height = "230px"),elevation = 4,width = 12))),
      #         
      #         sidebarLayout(
      #             sidebarPanel(userBox(
      #                 id = "userbox",
      #                 title = userDescription(
      #                     title = "Cardano",
      #                     subtitle = "Data Historica",
      #                     type = 2,
      #                     image = "https://img.icons8.com/fluent/100/000000/cardano.png"
      #                 ),
      #                 status = "primary",
      #                 gradient = TRUE,
      #                 background = "primary",
      #                 boxToolSize = "xl",
      #                 "Capitalizacion de mercado",textOutput("ada_market"),
      #                 tags$br(),
      #                 "Volumen de transacciones",textOutput("ada_vol"),
      #                 tags$br(),
      #                 downloadButton("descarga_ada", "Descargar datos"),
      #                 maximizable = TRUE,
      #                 elevation = 5,
      #                 width = 12,
      #                 height = 220)),
      #             mainPanel(box(status = "danger",plotlyOutput("ada",height = "230px"),elevation = 4,width = 12)))
      # )
      
    )))




