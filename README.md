# Restaurant Sales Performance Dashboard

For this dashboard, the performance of a restaurant was analysized. The data was uploaded into SQL Server and T-SQL was used to explore the dataset to draw insights. Then, the data was visualized in Tableau Public. The data set is from Kaggle.  


The project can be visited here: [Tableau](https://public.tableau.com/views/RestaurantSalesPerformance_17062290632400/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link)

## <a name="technologies"></a> Technologies
* T-SQL
* SQL Server
* Azure Data Studio
* Docker
* Excel
* Tableau


## <a name=" Dashboard Details"></a> Dashboard Details

### Data Clean Up<br />


For this project, I developed a comprehensive sales performance dashboard by uploading a CSV file to MS SQL Server and creating a database to analyze restaurant transaction data. After examining the dataset, I identified data quality issues, including null values in the transaction type field that required consideration for analysis. To enhance the analytical capabilities, I performed several data transformations by extracting day of week, month, and year from transaction dates, creating three new columns for temporal analysis. I also added fiscal quarters as a new column based on date and year data, then queried the enhanced database and extracted the data to another Excel file for Tableau compatibility since I was using the free version.

I created a two-tab dashboard in Tableau where the Overview tab displays the restaurant's fiscal performance metrics over the year, and the Item Sales Ranking tab shows product-specific performance including sales volume, revenue by item, and time-of-day performance patterns. During development, I encountered several technical challenges that required creative solutions. I resolved an issue where Q1 2023 was not displaying chronologically after Q3 2022 in the area line graph by manually sorting quarter numbers. I also combined scatter plot and area line graph using dual axes to display individual data points on the area chart. Creating donut charts proved complex, requiring me to construct them by layering two pie charts—removing categories from one to create a center circle, adding the sum as a label, resizing, and positioning it at the center using dual axes.

### Key Insights<br />

The dashboard revealed several key insights about restaurant performance. From the overview analysis, food sales significantly exceeded beverage sales and generated the highest revenue, while cash payments slightly outpaced online payment methods, and Q1 2023 achieved peak quarterly revenue. The item sales analysis showed that night hours generated maximum revenue, with sandwiches being the top revenue driver. Coffee had the highest sales volume overall, sandwiches contributed the most to total revenue, while Vada Pav performed poorest in both volume and revenue. The menu featured Indian street foods including Vada Pav (Maharashtra's popular deep-fried potato fritter in bread bun with chutneys), Frankie (spiced filling wrapped in roti flatbread), Pani Puri (crispy shells filled with flavored water and spices), and Aloo Puri (deep-fried potato-infused bread). This project demonstrates proficiency in SQL data manipulation, Tableau visualization techniques, and business intelligence analysis for restaurant operations.

### Overview<br /> 

<img width="2786" height="1586" alt="image" src="https://github.com/user-attachments/assets/bd812dc3-6c25-4fd1-b134-04ec3ad4ec6d" />

### Items Sales Ranking<br /> 
<img width="2772" height="1576" alt="image" src="https://github.com/user-attachments/assets/0fb6bebd-0a41-44bc-b3ed-7f8abfc0f257" />

