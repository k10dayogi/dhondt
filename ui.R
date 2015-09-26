#setwd("C:/Users/k10dayogi/Dropbox/WORK/NHSS/2015-2016 Fall Stuff/Coursera/data prod")
library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("d'Hondt Method of Apportionment"),
    sidebarPanel(
        numericInput('n', 'Number of seats to fill', 0, min = 0, max = 10, step = 1),
        numericInput('id1', 'State 1 Population', 0, min = 0, max = 10, step = 1),
        numericInput('id2', 'State 2 Population', 0, min = 0, max = 10, step = 1),
        numericInput('id3', 'State 3 Population', 0, min = 0, max = 10, step = 1),
        numericInput('id4', 'State 4 Population', 0, min = 0, max = 10, step = 1),
        numericInput('id5', 'State 5 Population', 0, min = 0, max = 10, step = 1),
        numericInput('id6', 'State 6 Population', 0, min = 0, max = 10, step = 1),
        numericInput('id7', 'State 7 Population', 0, min = 0, max = 10, step = 1),
        numericInput('id8', 'State 8 Population', 0, min = 0, max = 10, step = 1),
        numericInput('id9', 'State 9 Population', 0, min = 0, max = 10, step = 1),
        numericInput('id10', 'State 10 Population', 0, min = 0, max = 10, step = 1),
        numericInput('id11', 'State 11 Population', 0, min = 0, max = 10, step = 1),
        numericInput('id12', 'State 12 Population', 0, min = 0, max = 10, step = 1)
    ),
    mainPanel(
        h3("Documentation"),
        p("This app uses the d'Hondt method to allocate seats in an elected legistlature so the numher of seats allocated to each state is proportional to the state's population."),
        p("In order to use the app, indicate how many seats there are in the legislature in the first box, and fill in the population of each state (up to 12) on the left side. The number of seats per state is rendered as a vector on the right side."),
        p("In order for the function to work, you must at least fill in the number of seats and values for the first two states. The default values of states 3-12 are 0, so there is no need to enter values for those states if they are not needed."),
        p("If you are interested in the mathematics behind this method, I would recommend visiting the Wikipedia page",a("here.", href="https://en.wikipedia.org/wiki/D%27Hondt_method")),
        h3("The result"),
        verbatimTextOutput("y")
    )
))