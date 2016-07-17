library(datasets)
data(cars)
cars$speed2 = cars$speed ^ 2
model = lm(data = cars, dist ~ .)

stoppingDistance <- function(speed) {
  model$coefficients[[1]] + speed * model$coefficients[[2]] + speed * speed * model$coefficients[[3]]
}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$speed})
    output$prediction <- renderPrint({stoppingDistance(input$speed)})
  }
)