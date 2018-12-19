library(shiny)

shinyServer(function(input,output){
  output$bar <- renderPlot({
    
    bar2 <- tapply(mtcars[, input$yaxis], list(mtcars[,input$xaxis]), mean)
    barplot(bar2, beside = input$sidebar)
    
  })
})