#loading files into r-studio & plotting given data:

indialentil<-read.csv("~/Downloads/bquxjob_5c5418a9_17ca8d6c6bb.csv")
library(ggplot2)
library(tidyverse)
library(lubridate)

#make sure to edit the data type of month & year columns in order for R to recognize the data as time series:

gambiaBD<-mutate(.data=gambiaBD, date=make_datetime(Year,Month))
ggplot(data= gambiaBD ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

bfbn<-mutate(.data=bfbn, date=make_datetime(Year,Month))
ggplot(data= bfbn ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

burundibeans<-mutate(.data=burundibeans, date=make_datetime(Year,Month))
ggplot(data= burundibeans ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

bangladeshmasur<-mutate(.data=bangladeshmasur, date=make_datetime(Year,Month))
ggplot(data= bangladeshmasur,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

cam_b_n_WS<-mutate(.data=cam_b_n_WS, date=make_datetime(Year,Month))
ggplot(data= cam_b_n_WS ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

carbn<-mutate(.data=carbn, date=make_datetime(Year,Month))
ggplot(data= carbn ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

col_len_i_WS<-mutate(.data=col_len_i_WS, date=make_datetime(Year,Month))
ggplot(data= col_len_i_WS ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

col_p_gd_WS<-mutate(.data=col_p_gd_WS, date=make_datetime(Year,Month))
ggplot(data= col_p_gd_WS ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

colombiabrWS<-mutate(.data=colombiabrWS, date=make_datetime(Year,Month))
ggplot(data= colombiabrWS ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

congowb<-mutate(.data=congowb, date=make_datetime(Year,Month))
ggplot(data= congowb ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

djiboutiwb<-mutate(.data=djiboutiwb, date=make_datetime(Year,Month))
ggplot(data= djiboutiwb ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

drcbeans<-mutate(.data=drcbeans, date=make_datetime(Year,Month))
ggplot(data= drcbeans ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

egy_b_fd_R<-mutate(.data=egy_b_fd_R, date=make_datetime(Year,Month))
ggplot(data= egy_b_fd_R ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

egyptlentil<-mutate(.data=egyptlentil, date=make_datetime(Year,Month))
ggplot(data= egyptlentil ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

ESBeanssrWS<-mutate(.data=ESBeanssrWS, date=make_datetime(Year,Month))
ggplot(data= ESBeanssrWS ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

gua_b_bla_WS<-mutate(.data=gua_b_bla_WS, date=make_datetime(Year,Month))
ggplot(data= gua_b_bla_WS ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

guin_b_nw_R<-mutate(.data=guin_b_nw_R, date=make_datetime(Year,Month))
ggplot(data= guin_b_nw_R ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

haiti_beansBR<-mutate(.data=haiti_beansBR, date=make_datetime(Year,Month))
ggplot(data= haiti_beansBR ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

haiti_bRR<-mutate(.data=haiti_bRR, date=make_datetime(Year,Month))
ggplot(data= haiti_bRR ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

honbrWS<-mutate(.data=honbrWS, date=make_datetime(Year,Month))
ggplot(data= honbrWS ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

indialentil<-mutate(.data=indialentil, date=make_datetime(Year,Month))
ggplot(data= indialentil ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

indiamasur<-mutate(.data=indiamasur, date=make_datetime(Year,Month))
ggplot(data= indiamasur ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

indiamoong<-mutate(.data=indiamoong, date=make_datetime(Year,Month))
ggplot(data= indiamoong ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

indurad<-mutate(.data=indurad, date=make_datetime(Year,Month))
ggplot(data= indurad ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

iraqwb<-mutate(.data=iraqwb, date=make_datetime(Year,Month))
ggplot(data= iraqwb ,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

ken_b_d_WS<-mutate(.data=ken_b_d_WS, date=make_datetime(Year,Month))
ggplot(data= ken_b_d_WS,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

kenyaBD<-mutate(.data=kenyaBD, date=make_datetime(Year,Month))
ggplot(data= kenyaBD,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

les_beans_SR_R<-mutate(.data=les_beans_SR_R, date=make_datetime(Year,Month))
ggplot(data= les_beans_SR_R,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

les_pSDR<-mutate(.data=les_pSDR, date=make_datetime(Year,Month))
ggplot(data= les_pSDR,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

libya_chickR<-mutate(.data=libya_chickR, date=make_datetime(Year,Month))
ggplot(data= libya_chickR,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

libyabeans<-mutate(.data=libyabeans, date=make_datetime(Year,Month))
ggplot(data= libyabeans,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

malawibeans<-mutate(.data=malawibeans, date=make_datetime(Year,Month))
ggplot(data= malawibeans,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

malibn<-mutate(.data=malibn, date=make_datetime(Year,Month))
ggplot(data= malibn,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

mz_b_but_R<-mutate(.data=mz_b_but_R, date=make_datetime(Year,Month))
ggplot(data= mz_b_but_R,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

mz_b_cat_R<-mutate(.data=mz_b_cat_R, date=make_datetime(Year,Month))
ggplot(data= mz_b_cat_R,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

mz_b_mag_R<-mutate(.data=mz_b_mag_R, date=make_datetime(Year,Month))
ggplot(data= mz_b_mag_R,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

mzcowpeas<-mutate(.data=mzcowpeas, date=make_datetime(Year,Month))
ggplot(data= mzcowpeas,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

pak_b_mash_R<-mutate(.data=pak_b_mash_R, date=make_datetime(Year,Month))
ggplot(data= pak_b_mash_R,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

pakimasur<-mutate(.data=pakimasur, date=make_datetime(Year,Month))
ggplot(data= pakimasur,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

pakimoong<-mutate(.data=pakimoong, date=make_datetime(Year,Month))
ggplot(data= pakimoong,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

palchickpeas<-mutate(.data=palchickpeas, date=make_datetime(Year,Month))
ggplot(data= palchickpeas,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

sier_pp_R<-mutate(.data=sier_pp_R, date=make_datetime(Year,Month))
ggplot(data= sier_pp_R,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

ssud_bRR<-mutate(.data=ssud_bRR, date=make_datetime(Year,Month))
ggplot(data= ssud_bRR,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

syriachickpeas<-mutate(.data=syriachickpeas, date=make_datetime(Year,Month))
ggplot(data= syriachickpeas,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

syrialentil<-mutate(.data=syrialentil, date=make_datetime(Year,Month))
ggplot(data= syrialentil,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

syriawb<-mutate(.data=syriawb, date=make_datetime(Year,Month))
ggplot(data= syriawb,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

tanzaniabws<-mutate(.data=tanzaniabws, date=make_datetime(Year,Month))
ggplot(data= tanzaniabws,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

tj_b_har_R<-mutate(.data=tj_b_har_R, date=make_datetime(Year,Month))
ggplot(data= tj_b_har_R,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

tj_p_GD_R<-mutate(.data=tj_p_GD_R, date=make_datetime(Year,Month))
ggplot(data= tj_p_GD_R,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

tjchickpeas<-mutate(.data=tjchickpeas, date=make_datetime(Year,Month))
ggplot(data= tjchickpeas,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

turkeychickpeas<-mutate(.data=turkeychickpeas, date=make_datetime(Year,Month))
ggplot(data= turkeychickpeas,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

turkeylentil<-mutate(.data=turkeylentil, date=make_datetime(Year,Month))
ggplot(data= turkeylentil,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

turkeywb<-mutate(.data=turkeywb, date=make_datetime(Year,Month))
ggplot(data= turkeywb,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

ugandabeans<-mutate(.data=ugandabeans, date=make_datetime(Year,Month))
ggplot(data= ugandabeans,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

yem_BkrR<-mutate(.data=yem_BkrR, date=make_datetime(Year,Month))
ggplot(data=yem_BkrR,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

yem_pYSR<-mutate(.data=yem_pYSR, date=make_datetime(Year,Month))
ggplot(data=yem_pYSR,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

yemenlentil<-mutate(.data=yemenlentil, date=make_datetime(Year,Month))
ggplot(data=yemenlentil,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

yemenwb<-mutate(.data=yemenwb, date=make_datetime(Year,Month))
ggplot(data=yemenwb,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

zambiaBD<-mutate(.data=zambiaBD, date=make_datetime(Year,Month))
ggplot(data=zambiaBD,aes(x=date, y=Price))+ geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")

zimbabwebeans<-mutate(.data=zimbabwebeans, date=make_datetime(Year,Month))
ggplot(data=zimbabwebeans,aes(x=date, y=Price))+geom_line(aes(group=Market, color=Market))+ theme(legend.position="none")