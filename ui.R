shinyUI(
  pageWithSidebar(
    headerPanel("Stopping distance prediction"),
    
    sidebarPanel(
      numericInput("speed", "Speed mph", 20, min=2, max=100, step=1),
      submitButton("Submit")
    ),
    
    mainPanel(
      h3("Predicated car stopping distance"),
      h4("You entered a speed of"),
      verbatimTextOutput("inputValue"),
      h4("mph, which resulted in a predicted Stopping distance of "),
      verbatimTextOutput("prediction"),
      h4("feet."),
      p("This prediction is based on the data in the R datasets package 'cars', 
        which contains 50 observations of speed versus stopping distance from
        the 1920 era. The data was fit with a polynomial regression of order 2.")
    )
  )
)
