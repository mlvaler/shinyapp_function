source("global.R")
source("prediction.R")

server <- function(input, output, session) {
  
  call_prediction <- reactive({
    prediction <- prediction(input$month_proj) #aqui vai o input do usuario que será recebido na função externa
    return(prediction)
  })
  
  observeEvent(input$submit, {
    isolate({
      month_proj = input$month_proj
    })
  })
  
  observeEvent(input$reset, {
    output$table = renderTable({
      matrix
    })
  })
  
  observeEvent(input$submit, {
    output$table = renderTable({
      call_prediction() #chamada para a função externa reativa
    })
  })
  
}

shinyApp(ui = ui, server = server)
