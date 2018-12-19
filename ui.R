library(shiny)
shinyUI(fluidPage(
  titlePanel("Bar Chart"),
  sidebarLayout(
    sidebarPanel(
      selectInput("xaxis", "Select the value for X Axis", colnames(mtcars), selected = "gear"),
      selectInput("yaxis", "Select the value for Y Axis", colnames(mtcars), selected = "mpg"),
      checkboxInput("sidebar", "Create Side Bar")
    ),
    mainPanel(
      plotOutput("bar")
    )
  )
))