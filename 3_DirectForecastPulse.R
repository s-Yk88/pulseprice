library(tidyverse)
install.packages("forecastML")
library(forecastML)
library(dtplyr)
install.packages("glmnet")
library(glmnet) 
library(xgboost)

#example data is the time series of masur lentil prices in Bangladesh

#As not every market had data from the same time, we will fill in missing month & year data resulting from gaps:
data <- forecastML::fill_gaps(masur_bangladesh,date_col=5,frequency='1 month', groups = "Market")

#the date column was created when loading so that R recognized the dataset as a time series
data$Month <- lubridate::month(data$date)
data$Year <- lubridate:: year(data$date)

#reorder columns to avoid future issues:
data<-data[,c(4,1,2,3,5)]

#plot individual markets:
ggplot(data,aes(x=date,y=Price,color=ordered(Market),group=Year))+geom_line()+facet_wrap(~ordered(Market),scales="fixed")+theme_bw()+theme(legend.position="none")+xlab(NULL)

#MODEL TRAINING (MT):

#change market groups into numeric in order to better work with xgboost
data$Market <- as.numeric(factor(data$Market)) 

outcome_col <- 4
horizons <- c(1,12,24,36) #Our goal is to forecast 36 months into the future -- which may yield some issues but thats a problem for another time
lookback<-c(1:36,48)
dates<-data$date
data$date<- NULL
frequency <- '1 month'
dynamic_features <- c("Month", "Year")

groups <- "Market"

type <- "train"

bang_data_train <- forecastML:: create_lagged_df(data=data, type=type, outcome_col=outcome_col,horizons=horizons, lookback=lookback, dates=dates, frequency=frequency, dynamic_features=dynamic_features, groups=groups, use_future=FALSE)

plot(bang_data_train) #feature map for any lagged features across the forecast horizons

#validation windows for training data & plotting those windows:
windows <- forecastML:: create_windows(bang_data_train, window_length=24, skip=24, include_partial_window=FALSE)
plot(windows,bang_data_train)+theme(legend.position="none")

#model function:
model_function<- function(data,outcome_col=4){
  data <-data[!is.na(data[, outcome_col]), ]
  indices <- 1:nrow(data)
  
  set.seed(224)
  train_indices <- sample(1:nrow(data), ceiling(nrow(data)*.8), replace=FALSE)
  test_indices <- indices [!(indices %in% train_indices)]
  b_data_train <- xgboost::xgb.DMatrix(data=as.matrix(data[train_indices,-(outcome_col), drop= FALSE]), label =  as.matrix(data[train_indices,outcome_col,drop=FALSE]))
  b_data_test <- xgboost::xgb.DMatrix(data=as.matrix(data[test_indices,-(outcome_col),drop=FALSE]), label = as.matrix(data[test_indices, outcome_col, drop=FALSE]))
  params <-list("objective"= "reg:linear")
  watchlist <- list(train=b_data_train, test=b_data_test)
  
  set.seed(224)
  model<-xgboost::xgb.train(data=b_data_train, params=params, max.depth=8, nthread=2,nrounds=30, metrics='rmse',verbose=0,early_stopping_rounds=5,watchlist=watchlist)
  return(model)
}

# MT - '(window #) validation datasets' * '4 forecast horizons' = 4w models:
model_results_bang <-forecastML::train_model(lagged_df=bang_data_train, windows=windows, model_name = "xgboost",model_function=model_function, use_future = FALSE)

prediction_function <- function(model,data_features){
  x<- xgboost::xgb.DMatric(data=as.matric(data_features))
  data_pred <-data.frame("y-pred"=predict(model,x),
                         "y-upper_pred"=predict(model,x)+2,
                         "y_lower_pred"=predict(model,x)-2)
}

data_pred <- predict(model_results_bang, prediction_function=list(prediction_function),data=bang_data_train)

#plotting historical model fit:
plot(data_pred) + theme(legend.position="none")
plot(data_pred, facet= group~model, group_filter = "Market %in% c(2,3,4)", windows=2)
plot(data_pred, facet= group~horizon, group_filter = "Market %in% c(2,3,4)", windows=2)


#historical prediction error:
data_error <- forecastML::return_error(data_pred)
plot(data_error, type="window", group_filter="Market %in% c(2,3,4)", metric="mae")
plot(data_error, type="horizon",group_filter="Market %in% c(2,3,4)", metric="mae")
plot(data_error, type="global",group_filter="Market %in% c(2,3,4)", metric="mae")

#FORECASTING MODEL (FM):
##forecasting with multiple models from nested cv (gives only 1 step ahead)
type <- "forecast"
bang_forecast <- forecastML::create_lagged_df(data, type=type, outcome_col=outcome_col, horizons=horizons, lookback=lookback, dates=dates, frequency=frequency, dynamic_features=dynamic_features, groups=groups, use_future=FALSE)

#FM- refilling dynamic features as the previous thing erased them:
for(i in seq_along(bang_forecast)){
  bang_forecast[[i]]$Month <- lubridate::month(bang_forecast[[i]]$index)
  bang_forecast[[i]]$Year <- lubridate:: year(bang_forecast[[i]]$index)
}

#Forecast 1, 1:12, 1:24, 1:36 months into the future:
bang_FORECASTS <- predict(model_results_bang, prediction_function=list(prediction_function), data=bang_forecast)
plot(bang_FORECASTS)

#FM- model training with all data:
windows <- forecastML:: create_windows(bang_data_train, window_length=0)
plot(windows, bang_data_train) + theme(legend.position="none")

#FM - training model without cross validation:
model_results_NO_bang<-forecastML::train_model(lagged_df=bang_data_train, windows=windows, model_name="xgboost", model_function=model_function, use_future=FALSE)

data_forecasts<-predict(model_results_NO_bang, prediction_function = list(prediction_function), data=bang_forecast)

#consolidate all horizon forecasts:
data_combined<-forecastML:: combine_forecasts(data_forecasts)

#PLOTTING FINAL FORECASTS:
data_actual<- data[dates <=as.Date("2018-08-01"),]
actual_indices<- dates[dates <= as.Date("2018-08-01")]
plot(data_combined, data_actual=data_actual, actual_indices=actual_indices)
plot(data_combined, data_actual=data_actual, actual_indices=actual_indices)+ theme(legend.position="none")+xlab(NULL)+ylab("Price / 1 kg (BDT)")


