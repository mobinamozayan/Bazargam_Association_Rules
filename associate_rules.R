rm(list = ls())

library(dplyr)
library(arules)
library(arulesViz)
library(magrittr)
library(readr)
library(readxl)
library(ggplot2)
library(plotly)


df = read_excel('E:\\Bazargam\\SalesByOrder.xlsx')
View((df))
summary(df)


# Group products by order number and convert products into a list
grouped_data <- df %>%
  select(`شماره سفارش`, محصول) %>%
  group_by(`شماره سفارش`) %>%
  summarise(محصولات = list(as.character(محصول)))  # Use as.character to ensure conversion to strings

print(grouped_data)

# Convert grouped data into transaction format for association rule mining
transactions <- as(split(unlist(grouped_data$محصولات), grouped_data$`شماره سفارش`), "transactions")
summary(transactions)


# Plot the item frequency of the top 10 most frequent items
itemFrequencyPlot(transactions, topN=10, cex.names=1)

# Run the apriori algorithm to find association rules
rules <- apriori(transactions, 
                 parameter = list(supp=0.001, conf=0.01, 
                                  maxlen=10, 
                                  target= "rules"))
inspect(rules)
summary(rules)

rules_df <- as(rules, "data.frame")

print(rules_df)
View(rules_df)
