#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(markdown)
shinyUI(navbarPage("Whats the best car for your trip?",
                   tabPanel("Home",
                            # Sidebar Setup
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Load in your your trip details and preferences on cars:"),
                                numericInput('dis', 'Distance (in miles):', 50, min = 1, max = 1000),
                                numericInput('cost', 'Petrol Price (per gallon):', 2.41, min = 2, max = 4, step=0.01),
                                numericInput('gas', 'Maximum spending on gasoline:', 50, min=1, max=1000),
                                checkboxGroupInput('cyl', 'Number of cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                                sliderInput('disp', 'Displacement', min=70, max=480, value=c(70,480), step=10),
                                sliderInput('hp', 'Horsepower', min=50, max=340, value=c(50,340), step=10),
                                checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1))
                              ),
                              mainPanel(
                                dataTableOutput('table')
                              )
                            )
                   ),
                   tabPanel("About",
                            mainPanel(
                              # includeMarkdown("about.md")
                            )
                   )
))     