#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to give BMI
shinyServer(function(input, output) {

    output$text1 <- renderText({

        # generate BMI
        round(input$numeric * 703  / (input$height)^2, 1)
    })
    
    output$text2 <- renderText({

        # BMI indicator
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
        if (input$height == 75 && input$numeric > 192 && input$numeric <233) BMI = "Over-weight"
        if (input$height == 75 && input$numeric > 232 && input$numeric < 312) BMI = "Obesity"
        if (input$height == 75 && input$numeric > 311) BMI = "Morbid Obesity"
        
        if (input$height == 76 && input$numeric < 157) BMI = "Under-weight"
        if (input$height == 76 && input$numeric > 156 && input$numeric < 198) BMI = "Ideal weight"
        if (input$height == 76 && input$numeric > 197 && input$numeric <239) BMI = "Over-weight"
        if (input$height == 76 && input$numeric > 238 && input$numeric < 321) BMI = "Obesity"
        if (input$height == 76 && input$numeric > 320) BMI = "Morbid Obesity"
        
        BMI <- ifelse(input$show_BMI, BMI, "")
    })
    
    output$text3 <- renderText({
        # comment
        comment <- ifelse(input$show_comment, "For women: Protein portion should 
                          be the size of the palm, vegetables and salads the 
                          size of the whole hand, high carb foods shuld fit in
                          your cupped hand, high fat foods portions ought to be
                          the size of your thumb. Exercise 30 min three times a
                          week.  For men, double everything!", "")
                          
    })

})
