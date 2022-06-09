library(readxl)
df_pb <- read.csv('QVI_purchase_behaviour.csv')
df_td <- read_excel('QVI_transaction_data.xlsx')

# Checking to see whether there is any null values in any of the dataframes
colSums(is.na(df_pb))
colSums(is.na(df_td))

# Checking whether the data format is appropriate for different attributes

sapply(df_pb , class)
sapply(df_td, class)

#Let's change the class of dates from numeric to date

df_td$DATE <- as.Date(df_td$DATE, origin = "01-01-1900"
                      , format = '%d-%m-%Y')


# Getting to know what unique values are assigned to the categorical attributes

sapply(df_pb[,c('LIFESTAGE','PREMIUM_CUSTOMER')] , unique)
