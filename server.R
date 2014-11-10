library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x <- seq(from = -4, to = 4, by = 0.05)
    y <- dt(x, input$deg_f)
    qplot(x, y, geom = "line", xlim = c(-4, 4),
          ylim = c(0, 0.5), 
          main = paste("Student's t Distribution, df =", 
                       as.character(input$deg_f)),
          xlab = "t", ylab = "f(t)") + 
      theme_minimal() + stat_function(fun = dnorm, color = "blue")
  })
})
