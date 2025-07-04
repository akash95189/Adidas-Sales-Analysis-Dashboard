# Adidas Sales Analysis

## Project Overview

This project is an end-to-end data analysis solution designed to extract critical business insights from Adidas sales data. We utilize Python for data processing and analysis, SQL for advanced querying, and structured problem-solving techniques to solve key business questions and Power BI to visualise it in an Interactive Dashboard.

---
## Project Steps

### 1. Preview
  - **Tools Used**- Jupyter Notebook, Python, PySpark, MYSQL Workbench, Spark SQL, Google Colab
  - **Goal**- To Create a structured workspace in Jupyter Notebook for smooth data handling.
  - **Data Enginerring**- Used Pyspark and spark sql tp get the same analysis to learn ELT.

### 2. Set up Dataset
  - **Data Source**- Using Open source Kaggle to Download the readymade available dataset.
  - **Storage**- Save data in project file to access it in Jupyter notebook.

### 3. Explore Data
- **Loading Data**- Read the data into a Pandas FataFrame for initial analysis and transformation using Pandas Function.
- **Analysis**- Use functions like `.head()`,`.info()` and `.describe()` to get a quick overview of dataset.
- **Chech Volume**- use function `.shape()` to check the volume of set.

### 4. Data Cleaning
  - **Remove Dupplicates**- Identify and remove the duplicate entries to avoid uneven result.
  - **Handle Missing Values**- Drop rows and columns with missing values to avoid errors in result.
  - **Fix Data Types**- Ensure all columns have consistent data types (e.g., dates as `datetime`, prices as `float`).
  - **Validation**: Check for any remaining inconsistencies and verify the cleaned data.

### 5. Load Data into `.csv` format and into MYSQL
  - **To CSV File**- Save the cleaned file into `.csv` format for any further use.
  - **Set Up Connections**: Connect to MySQL using `sqlalchemy` and load the cleaned data into each database.
  - **Table Creation**: Set up tables in both MySQL using Python SQLAlchemy to automate table creation and data insertion.

### 6. SQL Analysis: Complex Queries and Business Problem Solving
  - **Business Problem-Solving**: Write and execute complex SQL queries to answer critical business questions, such as:
    - Maximum Number of units sold.
    - Total Products sold by Adidas with Product Name.
    - Total City with City Name where Products sold.
    - Maximum Profit by Adidas.
    - City with Maximum Unit Sold by Adidas.
    - Information about Retailers.
    - Maximum Sales by Adidas Retailers.
    - Maximum Price per Unit by Name of Product in Adidas.
    - Information About the last Products sold by Adidas in Year 2021.
    - Total Sales method each City vise.

### 7. Create an Inteactive Dashboard in Power BI
  - **Data Integration**- Load the cleaned CSV file to Power BI.
  - **Visualisation**- Using KPI's and various charts with information, make it interactive as per the business requirement.

---
## Future Enhancements

Possible extensions to this project:
- Using Machine Learning Algoritm for further predictions of sales by observing previous record.
- Predicting the future sales and best city to paln for expansion.

---

## Acknowledgments

- **Data Source**: Kaggle’s Walmart Sales Dataset
- **Inspiration**: Adidas’s business case studies on sales and supply chain optimization.
---
