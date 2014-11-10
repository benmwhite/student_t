library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x <- seq(from = -4, to = 4, by = 0.05)
    y <- dt(x, df)
    t_a <- qt(1 - alpha, df)
    qplot(x, y, geom = "line", xlim = c(-4, 4),
          ylim = c(0, 0.6), 
          main = paste("Student's t Distribution, df =", as.character(df),
                       ", critical value =", as.character(round(t_a, 4))),
          xlab = "t", ylab = "f(t)") + 
      geom_vline(xintercept = t_a, linetype = "dotted", color = "blue") + 
      theme_minimal()
  })
})
