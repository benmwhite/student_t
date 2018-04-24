library(shiny)
shinyUI(fluidPage(
  titlePanel("Visualizing Student's t Distribution"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("deg_f",
                  "Degrees of freedom:",
                  min = 1,
                  max = 25,
                  value = 10,
                  step = 1),
      sliderInput("sig",
                  "Level of signinficance:",
                  min = 0.005, 
                  max = 0.1,
                  value = 0.05,
                  step = 0.005),
      checkboxInput("tail", "Lower tail")
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
