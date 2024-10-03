# Sample Analysis of Bazargam Company Data

## Overview

This project analyzes the sales data of Bazargam Company, aiming to identify relationships between products based on order numbers. The dataset includes the following information:

- **Product**: The name of the sold product.
- **Order Number**: A unique identifier for each order.
- **Delivery Amount**: The total amount for delivery.
- **Delivery Weight**: The weight of the delivered items.

## Libraries Used

The following libraries are utilized for data processing, analysis, and visualization:

- **dplyr**: For data manipulation and transformation.
- **arules**: For mining association rules.
- **arulesViz**: For visualizing association rules.
- **magrittr**: For using the pipe operator (%>%) for cleaner code.
- **readxl**: For reading data from Excel files.
- **plotly**: For creating interactive visualizations.

## Data Preparation

1. **Load Data**: Data is loaded from an Excel file.
2. **Summary of Data**: A summary of the data is displayed to understand its structure and content.
3. **Group Products by Order Number**: Products are grouped by order number, creating a list of products for each order.
4. **Convert to Transaction Format**: The grouped data is converted to a transaction format suitable for association rule mining.

## Mining Association Rules

- The **Apriori** algorithm is used to find association rules from transactions with specified support and confidence thresholds.
- The results of the association rules are examined and summarized.
- The rules are converted to a data frame for further analysis.

## Visualizations

- An item frequency plot is created to analyze the top 10 most frequent items in the transactions.

### Notes

This data includes order numbers, product names, delivery amounts, and delivery weights, which assist in analyzing purchasing patterns and relationships between products.

## Conclusion

This analysis provides insights into product relationships within the sales data of Bazargam Company. After identifying the frequent items, we found which product had higher sales when sold alongside them, enhancing our understanding of customer purchasing behavior. This information can be beneficial for inventory management and marketing strategies.

## Future Work

- Further analysis could include clustering products based on delivery amounts and weights, as well as adding additional data to gain a more comprehensive understanding of sales dynamics.
