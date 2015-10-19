library(shiny)
shinyServer(
  function(input, output) {
    output$BMI <- renderPrint(round({input$weight/((input$height)^2)},3))
    # calculation of BMI value, which is devide weight by the sqaure of height
    }
)