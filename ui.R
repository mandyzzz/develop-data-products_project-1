library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Calculate Your BMI Value:"),
  sidebarPanel(
    numericInput('height', 'Your Height in Meter', 0, min = 0, max = 5, step = 0.001),
    numericInput('weight', 'Your Weight in Kilogram', 0, min = 0, max = 300, step = 0.001),
    submitButton('submit')
    # ask the user to enter his/her height and weight
  ),
  mainPanel(
    h4('Your Calculated BMI Value:'),
    verbatimTextOutput("BMI"),
    h6('Find Your Weight Category:Underweight = <18.5, Normal weight = 18.5-24.9, Overweight = 25-29.9, Obesity = BMI of 30 or greater.')
    )
    # output information has both the value and the reference for BMI value
))




