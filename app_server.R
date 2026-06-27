library(dplyr)
library(ggplot2)
library(plotly)
library(shiny)
library(tidyr)

df <- read.csv(
  "https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv",
  stringsAsFactors = FALSE
)

codebook <- read.csv(
  "https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-codebook.csv",
  stringsAsFactors = FALSE
)

total_cement_co2_2020 <- df %>%
  filter(year == 2020, iso_code != "") %>%
  summarize(total_cement_co2_2020 = sum(cement_co2, na.rm = TRUE)) %>%
  pull(total_cement_co2_2020)

country_max_cement_co2_2020 <- df %>%
  filter(year == 2020, iso_code != "") %>%
  filter(cement_co2 == max(cement_co2, na.rm = TRUE)) %>%
  pull(country)

diff_cement_co2_2010_2020 <- total_cement_co2_2020 - (df %>%
  filter(year == 2010, iso_code != "") %>%
  summarize(total_cement_co2_2010 = sum(cement_co2, na.rm = TRUE)) %>%
  pull(total_cement_co2_2010))

variables <- df %>%
  select(-year, -iso_code, -country, -cement_co2) %>%
  drop_na()

server <- function(input, output) {
  output$df_output <- renderPlotly({
    selected_data <- df %>%
      filter(country == input$country_type)

    df_plot <- ggplot(selected_data) +
      geom_line(
        mapping = aes_string(x = "year", y = input$variables_type),
        color = input$color_input
      ) +
      labs(
        x = "Year",
        y = input$variables_type,
        title = paste(input$variables_type, "for", input$country_type)
      )

    ggplotly(df_plot)
  })
}
