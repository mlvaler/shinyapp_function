source("global.R")

ui <- fluidPage(
  titlePanel("PoC"),
  mainPanel(
    numericInput(
      "month_proj",
      label = "Projection",
      0,
      min = 0,
      max = 100
    ),
    actionButton("reset", "Original"),
    actionButton("submit", "Prediction"),
    hr(),
    fluidRow(
      column(12,
             h2("Table Output"),
             tableOutput("table"))
    )
  )
)
