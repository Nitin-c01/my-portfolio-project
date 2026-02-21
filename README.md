📊 Health Insurance Analysis (2013–2022)
📌 Project Overview

This project analyzes Health Insurance data from 2013 to 2022 to understand premium trends, claim patterns, and claims ratio fluctuations over time.

The dataset was sourced from Kaggle and processed using Excel (Power Query), analyzed using MySQL, and visualized through an interactive Power BI dashboard.

📂 Data Source

Dataset obtained from Kaggle

Time Period: 2013 – 2022

Contains premium amount, claim amount, insurer details, and policy data

🛠 Tools & Technologies Used

Microsoft Excel (Power Query)

MySQL

Power BI

SQL (SELECT, WHERE, GROUP BY, HAVING, LIMIT, Aggregate Functions)

🔄 Step 1: Data Cleaning & Transformation (Excel – Power Query)

✔ Imported raw dataset
✔ Removed null & irrelevant columns
✔ Converted wide table into normalized format using Transpose/Unpivot
✔ Created new calculated columns
✔ Standardized data types
✔ Structured data for database import

🗄 Step 2: SQL Analysis (MySQL)

Performed:

SELECT – Data extraction

WHERE – Filtering

GROUP BY – Year-wise & insurer-wise aggregation

HAVING – Filtering aggregated values

ORDER BY – Sorting results

LIMIT – Restricting outputs

SUM(), AVG(), COUNT()

Example Query:

SELECT year, SUM(claim_amount) AS total_claims
FROM insurance_data
GROUP BY year
ORDER BY year;
📊 Step 3: Power BI Dashboard

Created an interactive dashboard in Microsoft Power BI.

KPI Used:

📌 Claims Ratio = (Total Claims / Total Premium) × 100

📌 Total Premium

📌 Total Claims

📌 Year-wise comparison

Filters Added:

Year

Policy Name

Insurer Name

📈 Key Insights

Claims ratio fluctuated across years

Significant increase in claim rate during 2020–2022

Higher claims ratio observed during COVID period

Analysis confirms logical data trends during pandemic years

The spike in 2020–2022 aligns with the global impact of COVID-19, validating the accuracy of analysis.

🎯 Skills Demonstrated

Data Cleaning & Normalization

SQL Query Writing

KPI Calculation

Dashboard Design

Business Insight Extraction

Trend Analysis
