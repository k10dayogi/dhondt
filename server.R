#setwd("C:/Users/k10dayogi/Dropbox/WORK/NHSS/2015-2016 Fall Stuff/Coursera/data prod")
library(shiny)
dhondt<-function(n,a1,a2,a3=0,a4=0,a5=0,a6=0,a7=0,a8=0,a9=0,a10=0,a11=0,a12=0){
    x<<-c(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12)
    v<<-vector("numeric",length=length(x))
    v[1]<<-a1;v[2]<<-a2;v[3]<<-a3;v[4]<<-a4;v[5]<<-a5;v[6]<<-a6;v[7]<<-a7;v[8]<<-a8;v[9]<<-a9;v[10]<<-a10;v[11]<<-a11;v[12]<<-a12
    y<<-vector("numeric",length=length(x))
    y<<-rep.int(0,length(x))
    while(sum(y)<n){
        if (x[1]==max(x)){
            y[1]<<-y[1]+1
            v[1]/(y[1]+1)->x[1]
        } else if (x[2]==max(x)) {
            y[2]<<-y[2]+1
            v[2]/(y[2]+1)->x[2]
        } else if (x[3]==max(x)){
            y[3]<<-y[3]+1
            v[3]/(y[3]+1)->x[3]
        } else if (x[4]==max(x)) {
            y[4]<<-y[4]+1
            v[4]/(y[4]+1)->x[4]
        } else if (x[5]==max(x)) {
            y[5]<<-y[5]+1
            v[5]/(y[5]+1)->x[5]
        } else if (x[6]==max(x)) {
            y[6]<<-y[6]+1
            v[6]/(y[6]+1)->x[6]
        } else if (x[7]==max(x)) {
            y[7]<<-y[7]+1
            v[7]/(y[7]+1)->x[7]
        } else if (x[8]==max(x)) {
            y[8]<<-y[8]+1
            v[8]/(y[8]+1)->x[8]
        } else if (x[9]==max(x)) {
            y[9]<<-y[9]+1
            v[9]/(y[9]+1)->x[9]
        } else if (x[10]==max(x)) {
            y[10]<<-y[10]+1
            v[10]/(y[10]+1)->x[10]
        } else if (x[11]==max(x)) {
            y[11]<<-y[11]+1
            v[11]/(y[11]+1)->x[11]
        }else {
            y[12]<<-y[12]+1
            v[12]/(y[12]+1)->x[12]
        }
    }
    print(y)
}
shinyServer(
    function(input, output) {
        output$n <- renderPrint({input$n})
        output$oid1 <- renderPrint({input$id1})
        output$oid2 <- renderPrint({input$id2})
        output$y <- renderPrint({dhondt(input$n,input$id1,input$id2,input$id3,input$id4,input$id5,input$id6,input$id7,input$id8,input$id9,input$id10,input$id11,input$id12)})
    }
)