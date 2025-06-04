import pandas as pd
import numpy as np


x=pd.read_csv('~/Desktop/prices.txt').reset_index()
x.rename(columns={'index':'adm0_id','adm0_id':'adm0_name','adm0_name':'adm1_id','adm1_id':'adm1_name','adm1_name':'mkt_id','mkt_id':'mkt_name','mkt_name':'cm_id','cm_id':'cm_name','cm_name':'cur_id','cur_id':'cur_name','cur_name':'pt_id','pt_id':'pt_name','pt_name':'um_id','um_id':'um_name','um_name':'mp_month','mp_month':'mp_year','mp_year':'price'}, inplace=True)
del x['mp_price']
x.loc[x["adm0_name"] == "Bassas da India", "adm0_name"] = "India"
x=x.drop_duplicates()
x.head()

len(x)

y=pd.read_csv("~/Desktop/commodity.txt")
y=y.drop(0)
y.head()

z=pd.read_csv('~/Desktop/markets.txt')
z=z.drop(0)
z['market_id']=z['market_id'].astype(int)
z.head()

y['commodity_id']=y['commodity_id'].astype(int)
joinone=x.merge(y,left_on='cm_id',right_on='commodity_id')
joinone=joinone.query('category=="pulses and nuts"')
len(joinone)

h=[119,118,248,421,420,156,174,167,355,135]
joinone=joinone[~joinone["cm_id"].isin(h)]
joinone.head()

joinone=joinone.drop(columns=['commodity','commodity_id'])
jointwo=joinone.merge(z,left_on='mkt_id',right_on='market_id')
jointwo=jointwo.drop(columns=['admin1','cur_id','market_id','pt_id','pt_name','market'])
jointwo.head()


jointwo['mp_year'] =jointwo['mp_year'].astype(str)
jointwo['mp_month'] = jointwo['mp_month'].astype(str)
jointwo['mp_year'] = jointwo['mp_year'].str.replace('.0', '', regex=False)
jointwo['mp_month'] = jointwo['mp_month'].str.replace('.0', '', regex=False)
jointwo['date'] = pd.to_datetime(jointwo['mp_year']+'-'+jointwo['mp_month'] + '-01')

jointwo.head()


prices=jointwo[['latitude','longitude','adm0_name','adm1_name','admin2','mkt_id','mkt_name','cm_name','cur_name','date','price']]
len(prices)
prices.to_csv('~/Desktop/prices.csv')


#Visualization
import pygwalker as pyg
walker = pyg.walk(prices)