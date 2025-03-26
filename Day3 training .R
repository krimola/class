library(tidyverse)
#load data
participants_data<-read.csv("participants_data.csv")
#Ghana is important 

#renam the data sett
participants_data<-dplyr::rename(participants_data,commute=km_home_to_zef)

participants_data_more_name_conversions<-rename(participants_data_rename_commute,name_lenth=letters_in_first_name)
colnames(participants_data)
summary_dist<-participants_data$commute
summary_dist
head(summary_dist)
summary_dist<-participants_data$commute
head(participants_data$commute)
participants_data%>%
  split(.$gender)%>%
  map(~
        lm(number_of_publications~number_of_siblings,
           data=.))%>%
  map(summary) %>% 
  map_dbl("r.squared")
        