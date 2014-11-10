library(shiny)
shinyUI(fluidPage(
  titlePanel("Visualizing Student's t Distribution"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("df",
                  "degrees of freedom:",
                  min = 1,
                  max = 40,
                  value = 20,
                  step = 1),
      radioButtons("alpha",
                   "significance level (alpha):",
                   list(0.001, 0.01, 0.05, 0.1),
                   selected = 0.05)
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
