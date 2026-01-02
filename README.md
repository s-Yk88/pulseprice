# Forecasts of Post-Covid Pulse Prices in the Global South

## Summary:
Pulses have been considered an environmentally-friendly and inexpensive alternative to commodities like meat, ideal in helping to combat food insecurity. The FFPI suggests that effects of the COVID-19 pandemic have caused dramatic price surges in all food groups, including pulses, that threaten our ability to feed the growing global population. But is it really just the impacts of the pandemic that threatens this ability?

In order to answer the ultimate question of: “What could have happened to the prices of pulses if the pandemic did not happen?”, I wanted to focus on the price forecasts of this food group in countries most susceptible to food insecurity as determined by the World Food Programme (WFP). I examine food price data from the WFP to create time series forecasts via gradient boosting of what could have happened to the prices of select pulses in the developing world if the pandemic had not occurred.

## Methods:
- Multi-Step Ahead Forecasting with Multiple Time Series
- Nested Cross Validation
- 
## Models:
- Gradient Boosted Tree Model
  
## Tools:
- **Google BigQuery**
- **Google Data Studio** (2021 EDA Data Visualizations)
- **R Studio 4.1.0** (Forecasts & Forecast Visualizations)
    - `ggplot2` `lubridate` `tidyverse` `forecastML` `dtplyr` `glmnet` `xgboost`
- Python 3.13.3 (2025 EDA Update)
    - `pandas` `numpy` `pygwalker`
- Kanaries AI
    - `graphic walker`
## Full Report:
https://zesty-bubbler-a87.notion.site/Forecasts-of-Post-COVID-Pulse-Prices-in-the-Global-South-2021-1ec537d1e6d980e39cdece8f42e648d6?source=copy_link

### Key Takeaways:
- Forecasts predicted overall lower pricing for Pulses, suggesting the Pandemic triggered a series of unobserved events resulting in actual prices rising more than expected
- Cyclical behaviors occurring in both forecasts and actual pricing suggest that there are deeper long term issues that need to be addressed in order to maintain viability of pulses as a food source.

