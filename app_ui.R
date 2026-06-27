introduction <- tabPanel(
  "Introduction",
  h4("Change in cement-related CO2 emissions by country"),
  p("CO2 emissions remain one of the most important environmental data topics for climate analysis."),
  p(
    "This app uses the ",
    tags$a(
      href = "https://github.com/owid/co2-data/",
      "Our World in Data CO2 dataset"
    ),
    " to explore greenhouse gas emissions by country from 1850 onward."
  ),
  p("In 2020, the country with the highest cement-related CO2 emissions was ", country_max_cement_co2_2020, "."),
  p("Across all countries, total cement-related CO2 emissions in 2020 were ", round(total_cement_co2_2020, 2), " million tonnes."),
  p("From 2010 to 2020, global cement-related CO2 emissions changed by ", round(diff_cement_co2_2010_2020, 2), " million tonnes.")
)

visualization <- tabPanel(
  "Visualization",
  titlePanel("Country-level CO2 emissions explorer"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "variables_type",
        label = "Variable",
        choices = colnames(variables)
      ),
      selectInput(
        inputId = "color_input",
        label = "Line color",
        choices = c("Red", "Blue", "Orange", "Green", "Black", "Purple", "Brown")
      ),
      selectInput(
        inputId = "country_type",
        label = "Country",
        choices = unique(df$country)
      )
    ),
    mainPanel(
      plotlyOutput(outputId = "df_output")
    )
  )
)

ui <- navbarPage(
  "CO2 Emissions Dashboard",
  tags$title("CO2 Emissions Dashboard"),
  introduction,
  visualization
)
