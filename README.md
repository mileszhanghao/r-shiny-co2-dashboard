# Climate Emissions Analytics Dashboard

An interactive analytics dashboard for exploring country-level carbon emissions trends using the Our World in Data CO2 dataset.

The app focuses on emissions comparison and lets users select countries, metrics, and display options to explore trend lines over time.

## Product Capabilities

- Loads live CO2 emissions data and codebook files from the OWID CO2 data repository.
- Uses tidyverse-style preprocessing to compute 2020 cement CO2 totals and 2010-2020 differences.
- Builds interactive line charts with `ggplot2` and `plotly`.
- Provides a Shiny UI with tabs for context and visualization.
- Supports exploratory analysis for climate policy, energy transition, and emissions storytelling.

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

This project is presented as a lightweight climate data product. The public version keeps the application code and removes non-portfolio instructions.
