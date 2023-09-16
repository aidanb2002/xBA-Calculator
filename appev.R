library(shiny)
library(DT)
library(openxlsx)
library(shinythemes)
library(shinyWidgets)
library(shinyBS)
library(shinyjs)

table <- read.xlsx("table.xlsx")

ui <- fluidPage(
  tags$head(
    tags$style(
      HTML("
      .input-field {
        margin-bottom: 15px;
      }
      .result {
        font-weight: bold;
        margin-top: 20px;
        text-align: center;
      }
      .custom-modal {
        background-color: #f7f7f7;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        padding: 20px;
        text-align: center; /* Center the content in the modal */
      }
      .custom-modal .modal-header {
        border-bottom: none;
        padding-bottom: 0;
      }
      .custom-modal .modal-footer {
        border-top: none;
        padding-top: 0;
        text-align: center;
      }
      ")
    )
  ),
  titlePanel("Expected Batting Average and Home Run Calculator"),
  theme = shinythemes::shinytheme("yeti"),
  sidebarLayout(
    sidebarPanel(
      div(class = "input-field",
          numericInput("velocity", "Enter Exit Velocity:", value = NULL,
                       min = min(table$exit_velocity),
                       max = max(table$exit_velocity))
      ),
      div(class = "input-field",
          numericInput("angle", "Enter Launch Angle:", value = NULL,
                       min = min(table$launch_angle),
                       max = max(table$launch_angle))
      ),
      actionButton("calculate", "Get Results")
    ),
    mainPanel(
      useShinyjs(),  # Load shinyjs
      # Empty div to display the modal
      div(id = "modal_output", style = "display: none;"),
      div(class = "result", align = "center", 
          style = "font-size: 40px;",  # Adjust the font size here
          textOutput("output_xBA"),
          textOutput("output_xHR")
      )
    )
  )
)



server <- function(input, output) {
  observeEvent(input$calculate, {
    velocity <- input$velocity
    angle <- input$angle
    
    selected_row <- table[table$exit_velocity == velocity & table$launch_angle == angle, ]
    
    result_xBA <- selected_row$xBA
    result_xHR <- selected_row$xHR
    
    # Prepare the content for the pop-up modal
    content <- tags$div(
      class = "custom-modal",
      tags$h3("Your Expected Stats:"),
      tags$p(paste("xBA:", result_xBA)),
      tags$p(paste("xHR:", sprintf("%.2f %%", round(result_xHR, 2)))),
      tags$div(
        class = "modal-footer",
        actionButton("ok_button", "Back", class = "btn btn-primary")
      )
    )
    
    # Display the pop-up modal with the results
    showModal(
      modalDialog(
        title = NULL,
        size = "m",
        footer = NULL,
        renderUI(content),
        class = "custom-modal-dialog"
      )
    )
  })
  
  # When OK button is clicked, close the modal
  observeEvent(input$ok_button, {
    removeModal()
  })
}

shinyApp(ui, server)
