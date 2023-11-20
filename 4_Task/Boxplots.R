# Побудуйте boxplot для зарплати у цілому датасеті
ggplot(Main_Data, aes(y = Salary)) +
  geom_boxplot(fill = "blue", color = "black") +  # Встановлюємо кольори для boxplot
  labs(
    y = "Зарплата",
    title = "Boxplot для зарплати у цілому датасеті"
  ) +
  theme_minimal()

# Побудуйте boxplot для зарплати за позицією (групування)
ggplot(Main_Data, aes(x = Specialization, y = Salary)) +
  geom_boxplot(fill = "green", color = "black") +  # Встановлюємо кольори для boxplot
  labs(
    x = "Спеціаліція",
    y = "Зарплата",
    title = "Boxplot для зарплати за спеціалізацією"
  ) +
  theme_minimal()


# Побудуйте boxplot для зарплати за позицією (групування)
ggplot(Main_Data, aes(x = Continent, y = Salary)) +
  geom_boxplot(fill = "green", color = "black") +  # Встановлюємо кольори для boxplot
  labs(
    x = "Континент",
    y = "Зарплата",
    title = "Boxplot для зарплати за континентом"
  ) +
  theme_bw()


# Побудуйте boxplot для зарплати за позицією (групування)
ggplot(Main_Data, aes(x = Number_of_projects, y = Salary, group = Number_of_projects)) +
  geom_boxplot(fill = "green", color = "black") +
  labs(
    x = "Кількість проектів",
    y = "Зарплата",
    title = "Boxplot для зарплати за кількістю проектів"
  ) +
  theme_linedraw()

# універсальне

library(shiny)
library(ggplot2)

# UI (користувацький інтерфейс)
ui <- fluidPage(
  titlePanel("Графік Boxplot з групуванням за змінною"),
  sidebarLayout(
    sidebarPanel(
      # Вибір змінної для групування
      selectInput("grouping_var", "Виберіть змінну для групування:",
                  choices = c("Position", "Specialization", "Continent", "Experience",
                              "Salary", "Gender", "Age", "Education", "Type of employment",
                              "Number_of_projects", "Job_satisfaction"),
                  selected = "Position")
    ),
    mainPanel(
      # Відображення графіку
      plotOutput("boxplot")
    )
  )
)

# Server (логіка)
server <- function(input, output) {
  # Створення графіку Boxplot
  output$boxplot <- renderPlot({
    ggplot(Main_Data, aes(x = .data[[input$grouping_var]], y = Salary, group = .data[[input$grouping_var]])) +
      geom_boxplot(fill = "green", color = "black") +
      labs(
        x = "Кількість проектів",
        y = "Зарплата",
        title = paste("Boxplot для зарплати за", input$grouping_var)
      ) +
      theme_minimal()
  })
}

# Запуск додатку
shinyApp(ui, server)