# Olist Sales Analysis

## Table of Contents
- [Project Background](#project-background)
- [Executive Summary](#executive-summary)
- [Insights Deep-Dive](#insights-deep-dive)
- [Recommendations](#recommendations)
- [Clarifying Questions, Assumptions, and Caveats](#clarifying-questions-assumptions-and-caveats)

## Project Background
Olist is a Brazilian e-commerce company founded in 2015 in which they connect smaller and medium-sized business to major online market places. I analyzed this company's dataset to answer key business questions. I sourced these questions from actual day-to-day inquiries in an unrelated company's email, effectively simulating real world scenarios in order to improve performance across sales and marketing teams.

## Executive Summary
Our analysis of Olist's 103,877 records across 2023-2024 highlights key trends in sales, refund behaviour, and seasonal performance across Brazil. São Paolo led all states with a 37.47% growth rate, reinforcing its role as Brazil's primary market. The performance of sales tended to decline in states further away from São Paolo.

May had the highest growth rate over the 2 years, generating over $1.2 million in sales. This contributed to Spring having the strongest seasonal performance, totaling over $6 million. Summer followed closely in revenue but showed the highest refund rate of 0.90%, still within acceptable limits. 

Rondônia has the highest state level refund rate at 2.75% suggesting a potential area for review.

<img width="1920" height="1080" alt="ER Diagram" src="https://github.com/user-attachments/assets/47ef7691-a774-4b7a-8bbc-033dd8b0316a" />

## Insights Deep-Dive
### Sales Trends
* Olist averaged approximately $15.9 million in annual sales over the past two years.
* São Paulo was consistently the top performing state, with sales decreasing the further away from the countries economic hub.
* Sales show clear seasonality, with Spring peaking in total sales. However some months in 2024 are missing, introducing potential bias.
<img width="1123" height="534" alt="Sales  By Months and Year" src="https://github.com/user-attachments/assets/3065191c-cf9a-4802-acd5-b4ac3febf0e5" />
<img width="1346" height="866" alt="Sales  By State" src="https://github.com/user-attachments/assets/41f13f9a-eccc-4c9e-a746-41ea7bc83d3e" />
<img width="722" height="852" alt="Sales  From Highest to Lowest" src="https://github.com/user-attachments/assets/a3e0652f-abf5-4f82-a034-cab7ba55c880" />

### Growth Rates
* São Paulo had the highest overall state level growth at 36.47% over the two years.
* Spring had the highest seasonal growth rate, contributing approximately $7 million across both years.
* May stood out as a consistent month of high growth yearly.
<img width="300" height="95" alt="Olist Dashboard - 2" src="https://github.com/user-attachments/assets/71f188a6-a258-4c17-b68c-ac219f6773fc" />
<img width="952" height="838" alt="Growth Rate  Monthly   Yearly" src="https://github.com/user-attachments/assets/8a208293-4086-4da3-ab1a-01db78e06758" />
<img width="300" height="95" alt="Olist Dashboard - 3" src="https://github.com/user-attachments/assets/42682d8d-4e36-485c-b5e3-00f629080b24" />

### Refund Rates
* Summer recorded the highest seasonal refund rate at 0.90%, though remains within acceptabel bounds.
* The sate with the highest refund rate was Rondônia, likely due to the its geographical distance from the main state.
* In 2023, the peak refund month was March, whereas in 2024 July had the highest rate at 1.81%.
<img width="300" height="95" alt="Olist Dashboard - 1" src="https://github.com/user-attachments/assets/8f304da0-46ff-4c4f-a0dd-cfc333465828" />
<img width="300" height="95" alt="Olist Dashboard - 4" src="https://github.com/user-attachments/assets/c443cccb-0eb2-4baa-8c61-ad7edb4f91e9" />
<img width="908" height="838" alt="Refund Rate  By State" src="https://github.com/user-attachments/assets/0db9c9e7-37f3-48bb-bd5e-da4aef685a40" />


## Recommendations
### Maximizing Sales and Growth Rates
* __Expand Beyond São Paulo:__ São Paulo dominates sales, perfomance drops in states farther from this hub. Increasing outreach, promotions, and logistics support in underperforming states can unlock new markets.
* __Capitalize on Seasonal Opportunities:__ While spring leads in sales, other seasons including summer, fall and christmas offer untapped revenue. Launching seasonal compaigns and promotions during those times can incentivise growth.
* __Boost Repeat Purchases with Loyalty Programs:__ Introducing seasonal themed events, rewards and loyalty programs can encourage customers to buy multiple of the same items. This could strengthen customer retention and average oder value.

### Maintaining Low Refund Rates
* __Replicate Effective Practices:__ Identify what worked during the months with low refund and apply those practices across the board, including product quality checks and better delivery communication.
* __Analyze Refund Patterns by State:__ Conduct a deeper analysis into which products and categories are most refunded in each state. This will help tailer better solutions whether its product sourcing or customer service interventions based on regional trends.

## Clarifying Questions, Assumptions, and Caveats
### Questions for Stakeholder Prior to Project Advancement
* Which statuses actually represent a completed payment?
  * Is "unavailable" a finalized status that should be treated as paid?
  * Does "created" mean the order was never finalized?
* Transactions with $0 were assumed to not be valid.

### Assumptions and Caveats
* Orders with status "delivered", "invoiced", "processing", "approved", "shipped", and "unavailable" were assumed to be paid orders.
* Orders with status "canceled" were categorized as cancelled, and "created" as never paid.
<img width="200" height="214" alt="image" src="https://github.com/user-attachments/assets/b20322bb-9bdf-40a2-beeb-8cdccb3dbd72" />

* $0 Transactions were kept in the dataset but filtered out when creating the charts.
---
* See the raw data and my cleaning, and pivot tables in the Excel Workbook above
* See my SQL Queries in the SQL file.
* See my data cleaning and visualization in the above.


