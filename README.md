# Interactive CO2 Emissions Dashboard

An R Shiny dashboard for exploring country-level carbon emissions trends using the Our World in Data CO2 dataset.

The app focuses on cement-related CO2 emissions and lets users select countries, variables, and plot colors to compare emissions metrics over time.

## Highlights

- Loads live CO2 emissions data and codebook files from the OWID CO2 data repository.
- Uses tidyverse-style preprocessing to compute 2020 cement CO2 totals and 2010-2020 differences.
- Builds interactive line charts with `ggplot2` and `plotly`.
- Provides a Shiny UI with tabs for context and visualization.

## Tech Stack

- R
- Shiny
- dplyr
- tidyr
- ggplot2
- plotly

## Run Locally

```r
install.packages(c("shiny", "dplyr", "tidyr", "ggplot2", "plotly"))
shiny::runApp()
```

## Data Source

Our World in Data CO2 and Greenhouse Gas Emissions dataset:
https://github.com/owid/co2-data

## Project Context

This project was built as an interactive data application and later cleaned for portfolio presentation. The public version keeps the application code and removes course-specific assignment instructions.
