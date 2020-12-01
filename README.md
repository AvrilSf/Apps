---
title: "Adult Body Mass Index App"
author: "Monica Maria Solorzano Rodriguez"
date: "11/30/2020"
output: ioslides_presentation
runtime: shiny
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
```

## The Concept

It is recommended by most clinical associations that people check their weight once or twice a year beginning at age 20 and up until 40 if they feel fine and have a normal weight.  Nevertheless, if someone has a tendency to gain weight easily or is trying to loose weight, is preferable to have a scale at home in order to weigh oneself more often. Despite this, it is not recommended to do this everyday but once a week, first thing in the morning, have in mind that it needs to be a slow process.   
The BMI (body mass index) is what one needs to know to find out if one is in the right weight for the height. It is calculated  by dividing weight in pounds by the squared height in inches and multiply the result by 703.  A BMI between 18.5 and 24 is ideal, below 18.5 it indicates underweight and it is as much of a concern as overweight, between 25 and 30 indicates overweight, between 31 and 40 indicates obesity, and higher than 40 indicates morbid obesity. These values being presented are only valid for adults over 18 years of age.    
 

## The App

Among the many things one person can do to keep an ideal weight, according to the height are, have an adequate size of portions in every meal, and exercise at least three times a week for no less than 25 minutes.    
In this BodyMassIndex App you can select your actual weight with the arrows in the first box, and then slide your way to your actual height.  Your BMI will appear in the right pane and you can choose whether to see the indicator of the segment you are in.  Additionally, you can choose to see a comment about the appropriate size of portions to have in every meal and the amount of exercise recommended by doctors. This App was done using the Shiny package.  Find the code below:

## ui Code for BodyMassIndex App

```{r ui, echo = TRUE, warning=FALSE, message=FALSE, comment="", eval=FALSE}
library(shiny)
shinyUI(fluidPage(
    titlePanel("Adult Body Mass Index"),
    sidebarLayout(
        sidebarPanel(
          numericInput("numeric", "Your weight in pounds:",
                       value = 120, min = 80, max = 1000, step = 1),  
          sliderInput("height","Your height in inches:", min = 58,max = 76,
                        value = 58),
          checkboxInput("show_BMI", "Show/Hide BMI Indicator", value = TRUE),
          checkboxInput("show_comment", "Show/Hide Comment", value = TRUE)
        ),
        mainPanel(
          h3("BMI for 18 years and older"),  
          textOutput("text1"),
          textOutput("text2"),
          textOutput("text3")
        )
    )
))
```

## Server calculation for BMI App

```{r server, echo = FALSE, warning=FALSE, message=FALSE, comment="", eval=TRUE}
library(shiny)
ui <- fluidPage(
    titlePanel("Adult Body Mass Index"),
    sidebarLayout(
        sidebarPanel(
          numericInput("numeric", "Your weight in pounds:",
                       value = 120, min = 80, max = 1000, step = 1),  
          sliderInput("height","Your height in inches:", min = 58,max = 76,
                        value = 58),
          checkboxInput("show_BMI", "Show/Hide BMI Indicator", value = TRUE),
          checkboxInput("show_comment", "Show/Hide Comment", value = TRUE)
        ),
        mainPanel(
          h3("BMI for 18 years and older"),  
          textOutput("text1"),
          textOutput("text2"),
          textOutput("text3")
        )
    )
)
server <- function(input, output) {
  output$text1 <- renderText({
        round(input$numeric * 703  / (input$height)^2, 1)
    })
    output$text2 <- renderText({
        if (input$height == 58 && input$numeric < 91) BMI = "Under-weight"
        if (input$height == 58 && input$numeric > 90 && input$numeric < 116) BMI = "Ideal weight"
        if (input$height == 58 && input$numeric > 115 && input$numeric < 139) BMI = "Over-weight"
        if (input$height == 58 && input$numeric > 138 && input$numeric < 187) BMI = "Obesity"
        if (input$height == 58 && input$numeric > 186) BMI = "Morbid Obesity"
        
        if (input$height == 59 && input$numeric < 94) BMI = "Under-weight"
        if (input$height == 59 && input$numeric > 93 && input$numeric < 120) BMI = "Ideal weight"
        if (input$height == 59 && input$numeric > 119 && input$numeric < 144) BMI = "Over-weight"
        if (input$height == 59 && input$numeric > 143 && input$numeric < 194) BMI = "Obesity"
        if (input$height == 59 && input$numeric > 193) BMI = "Morbid Obesity"
        
        if (input$height == 60 && input$numeric < 97) BMI = "Under-weight"
        if (input$height == 60 && input$numeric > 96 && input$numeric < 124) BMI = "Ideal weight"
        if (input$height == 60 && input$numeric > 123 && input$numeric < 149) BMI = "Over-weight"
        if (input$height == 60 && input$numeric > 148 && input$numeric < 200) BMI = "Obesity"
        if (input$height == 60 && input$numeric > 199) BMI = "Morbid Obesity"
        
        if (input$height == 61 && input$numeric < 100) BMI = "Under-weight"
        if (input$height == 61 && input$numeric > 99 && input$numeric < 128) BMI = "Ideal weight"
        if (input$height == 61 && input$numeric > 127 && input$numeric < 154) BMI = "Over-weight"
        if (input$height == 61 && input$numeric > 153 && input$numeric < 207) BMI = "Obesity"
        if (input$height == 61 && input$numeric > 206) BMI = "Morbid Obesity"
        
        if (input$height == 62 && input$numeric < 104) BMI = "Under-weight"
        if (input$height == 62 && input$numeric > 103 && input$numeric < 132) BMI = "Ideal weight"
        if (input$height == 62 && input$numeric > 131 && input$numeric < 159) BMI = "Over-weight"
        if (input$height == 62 && input$numeric > 158 && input$numeric < 214) BMI = "Obesity"
        if (input$height == 62 && input$numeric > 213) BMI = "Morbid Obesity"
        
        if (input$height == 63 && input$numeric < 107) BMI = "Under-weight"
        if (input$height == 63 && input$numeric > 106 && input$numeric < 136) BMI = "Ideal weight"
        if (input$height == 63 && input$numeric > 135 && input$numeric < 164) BMI = "Over-weight"
        if (input$height == 63 && input$numeric > 163 && input$numeric < 221) BMI = "Obesity"
        if (input$height == 63 && input$numeric > 220) BMI = "Morbid Obesity"
        
        if (input$height == 64 && input$numeric < 111) BMI = "Under-weight"
        if (input$height == 64 && input$numeric > 110 && input$numeric < 141) BMI = "Ideal weight"
        if (input$height == 64 && input$numeric > 140 && input$numeric < 170) BMI = "Over-weight"
        if (input$height == 64 && input$numeric > 169 && input$numeric < 228) BMI = "Obesity"
        if (input$height == 64 && input$numeric > 227) BMI = "Morbid Obesity"
        
        if (input$height == 65 && input$numeric < 115) BMI = "Under-weight"
        if (input$height == 65 && input$numeric > 114 && input$numeric < 145) BMI = "Ideal weight"
        if (input$height == 65 && input$numeric > 144 && input$numeric < 175) BMI = "Over-weight"
        if (input$height == 65 && input$numeric > 174 && input$numeric < 235) BMI = "Obesity"
        if (input$height == 65 && input$numeric > 234) BMI = "Morbid Obesity"
        
        if (input$height == 66 && input$numeric < 119) BMI = "Under-weight"
        if (input$height == 66 && input$numeric > 118 && input$numeric < 149) BMI = "Ideal weight"
        if (input$height == 66 && input$numeric > 148 && input$numeric < 180) BMI = "Over-weight"
        if (input$height == 66 && input$numeric > 179 && input$numeric < 242) BMI = "Obesity"
        if (input$height == 66 && input$numeric > 241) BMI = "Morbid Obesity"
        
        if (input$height == 67 && input$numeric < 122) BMI = "Under-weight"
        if (input$height == 67 && input$numeric > 121 && input$numeric < 154) BMI = "Ideal weight"
        if (input$height == 67 && input$numeric > 153 && input$numeric < 186) BMI = "Over-weight"
        if (input$height == 67 && input$numeric > 185 && input$numeric < 250) BMI = "Obesity"
        if (input$height == 67 && input$numeric > 249) BMI = "Morbid Obesity"
        
        if (input$height == 68 && input$numeric < 126) BMI = "Under-weight"
        if (input$height == 68 && input$numeric > 125 && input$numeric < 159) BMI = "Ideal weight"
        if (input$height == 68 && input$numeric > 158 && input$numeric < 191) BMI = "Over-weight"
        if (input$height == 68 && input$numeric > 190 && input$numeric < 257) BMI = "Obesity"
        if (input$height == 68 && input$numeric > 256) BMI = "Morbid Obesity"
        
        if (input$height == 69 && input$numeric < 129) BMI = "Under-weight"
        if (input$height == 69 && input$numeric > 128 && input$numeric < 163) BMI = "Ideal weight"
        if (input$height == 69 && input$numeric > 162 && input$numeric < 197) BMI = "Over-weight"
        if (input$height == 69 && input$numeric > 196 && input$numeric < 264) BMI = "Obesity"
        if (input$height == 69 && input$numeric > 263) BMI = "Morbid Obesity"
        
        if (input$height == 70 && input$numeric < 133) BMI = "Under-weight"
        if (input$height == 70 && input$numeric > 132 && input$numeric < 168) BMI = "Ideal weight"
        if (input$height == 70 && input$numeric > 167 && input$numeric < 203) BMI = "Over-weight"
        if (input$height == 70 && input$numeric > 202 && input$numeric < 272) BMI = "Obesity"
        if (input$height == 70 && input$numeric > 271) BMI = "Morbid Obesity"
        
        if (input$height == 71 && input$numeric < 137) BMI = "Under-weight"
        if (input$height == 71 && input$numeric > 136 && input$numeric < 173) BMI = "Ideal weight"
        if (input$height == 71 && input$numeric > 172 && input$numeric < 209) BMI = "Over-weight"
        if (input$height == 71 && input$numeric > 208 && input$numeric < 280) BMI = "Obesity"
        if (input$height == 71 && input$numeric > 279) BMI = "Morbid Obesity"
        
        if (input$height == 72 && input$numeric < 141) BMI = "Under-weight"
        if (input$height == 72 && input$numeric > 140 && input$numeric < 178) BMI = "Ideal weight"
        if (input$height == 72 && input$numeric > 177 && input$numeric < 214) BMI = "Over-weight"
        if (input$height == 72 && input$numeric > 213 && input$numeric < 288) BMI = "Obesity"
        if (input$height == 72 && input$numeric > 287) BMI = "Morbid Obesity"
        
        if (input$height == 73 && input$numeric < 145) BMI = "Under-weight"
        if (input$height == 73 && input$numeric > 144 && input$numeric < 183) BMI = "Ideal weight"
        if (input$height == 73 && input$numeric > 182 && input$numeric < 220) BMI = "Over-weight"
        if (input$height == 73 && input$numeric > 219 && input$numeric < 296) BMI = "Obesity"
        if (input$height == 73 && input$numeric > 295) BMI = "Morbid Obesity"
        
        if (input$height == 74 && input$numeric < 149) BMI = "Under-weight"
        if (input$height == 74 && input$numeric > 148 && input$numeric < 187) BMI = "Ideal weight"
        if (input$height == 74 && input$numeric > 186 && input$numeric < 226) BMI = "Over-weight"
        if (input$height == 74 && input$numeric > 225 && input$numeric < 304) BMI = "Obesity"
        if (input$height == 74 && input$numeric > 303) BMI = "Morbid Obesity"
        
        if (input$height == 75 && input$numeric < 153) BMI = "Under-weight"
        if (input$height == 75 && input$numeric > 152 && input$numeric < 193) BMI = "Ideal weight"
        if (input$height == 75 && input$numeric > 192 && input$numeric < 233) BMI = "Over-weight"
        if (input$height == 75 && input$numeric > 232 && input$numeric < 312) BMI = "Obesity"
        if (input$height == 75 && input$numeric > 311) BMI = "Morbid Obesity"
        
        if (input$height == 76 && input$numeric < 157) BMI = "Under-weight"
        if (input$height == 76 && input$numeric > 156 && input$numeric < 198) BMI = "Ideal weight"
        if (input$height == 76 && input$numeric > 197 && input$numeric < 239) BMI = "Over-weight"
        if (input$height == 76 && input$numeric > 238 && input$numeric < 321) BMI = "Obesity"
        if (input$height == 76 && input$numeric > 320) BMI = "Morbid Obesity"
        
        BMI <- ifelse(input$show_BMI, BMI, "")
    })
    output$text3 <- renderText({
        comment <- ifelse(input$show_comment, "For women: Protein portion should 
                          be the size of the palm, vegetables and salads the 
                          size of the whole hand, high carb foods shuld fit in
                          your cupped hand, high fat foods portions ought to be
                          the size of your thumb. Exercise 30 min three times a
                          week.  For men, double everything!", "")
    })
}
shinyApp(ui = ui, server = server)
```

