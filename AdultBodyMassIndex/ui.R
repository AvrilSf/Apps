#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Adult Body Mass Index"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
          numericInput("numeric", "Your weight in pounds:",
                       value = 120, min = 80, max = 1000, step = 1),  
          sliderInput("height",
                        "Your height in inches:",
                        min = 58,
                        max = 76,
                        value = 58),
          checkboxInput("show_BMI", "Show/Hide BMI Indicator", value = TRUE),
          checkboxInput("show_comment", "Show/Hide Comment", value = TRUE)
        ),

        # Show a plot of the generated distribution
        mainPanel(
          h3("BMI for 18 years and older"),  
          textOutput("text1"),
          textOutput("text2"),
          textOutput("text3")
        )
    )
))
