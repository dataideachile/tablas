# Modulo 1 ####


# token<-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

reg_ui <- function(id, label = "reg") {
  ns <- NS(id)
  
  tabItem(tabName = "reg",
            sidebarPanel(width = 12,
           
              fluidRow(box(highchartOutput(ns("grafico1")),elevation = 4,closable = FALSE,width = 4,collapsible = FALSE,solidHeader = FALSE),
                       box(highchartOutput(ns("grafico2")),elevation = 4,closable = FALSE,width = 4,collapsible = FALSE,solidHeader = FALSE),
                       box(highchartOutput(ns("grafico3")),elevation = 4,closable = FALSE,width = 4,collapsible = FALSE,solidHeader = FALSE)),
                         
                         
                         
              fluidRow(box(reactableOutput(ns("tabla1")),elevation = 4,closable = FALSE,width = 4,collapsible = FALSE,solidHeader = FALSE),
                       box(reactableOutput(ns("tabla2")),elevation = 4,closable = FALSE,width = 4,collapsible = FALSE,solidHeader = FALSE),
                       box(reactableOutput(ns("tabla3")),elevation = 4,closable = FALSE,width = 4,collapsible = FALSE,solidHeader = FALSE))
              
              ))
              
                   
             
}

reg_sv <- function(input, output, session) {
  
  
  output$tabla1<-renderReactable({
    
    tabla1<-reactable(iris,
                      style = list(fontFamily = "Work Sans, sans-serif", fontSize = "11px"))    })

  output$tabla2<-renderReactable({
    
    tabla2<-reactable(mtcars,
                      style = list(fontFamily = "Work Sans, sans-serif", fontSize = "11px"))    })
  
  output$tabla3<-renderReactable({
    
    tabla3<-reactable(diamonds,
                      style = list(fontFamily = "Work Sans, sans-serif", fontSize = "11px"))  
    })
  
    
  output$grafico1<-renderHighchart({
  
    grafico1<-iris %>% hchart(
      type = "scatter",
      hcaes(
        x = iris$Sepal.Length,
        y = iris$Sepal.Width,group=iris$Species))  
  })
  
  output$grafico2<-renderHighchart({
    
    grafico2<-mtcars %>% hchart(
      type = "scatter",
      hcaes(
        x = mtcars$mpg,
        y = mtcars$hp))
    grafico2
    
  })
  
  output$grafico3<-renderHighchart({
    
    grafico3<-diamonds %>% hchart(
      type = "scatter",
      hcaes(
        x = diamonds$depth,
        y = diamonds$,group=cut))
    grafico3
    
    })
  
  
}


