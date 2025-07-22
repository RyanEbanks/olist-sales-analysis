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

May had the highest growth rate over the 2 years, generating over R$1.2 million in sales. This contributed to Spring having the strongest seasonal performance, totaling in approximately R$3.5 million. Summer followed closely in revenue but showed the highest refund rate of 0.90% at the end of 2024, still within acceptable limits. 

Rondônia has the highest state level refund rate at 2.75% suggesting a potential area for review.

<img width="1920" height="1080" alt="ER Diagram" src="https://github.com/user-attachments/assets/47ef7691-a774-4b7a-8bbc-033dd8b0316a" />

## Insights Deep-Dive
### Sales Trends
* Olist averaged approximately R$15.8 million in annual sales over the past two years.
* São Paulo was consistently the top performing state, with sales decreasing the further away from the countries economic hub.
* Sales show clear seasonality, with Spring peaking in total sales. However some months in 2024 are missing, introducing potential bias.
<img width="952" height="528" alt="Sales By Months and Year" src="https://github.com/user-attachments/assets/e04a9e28-2b96-43a3-8b2b-5f9559506320" />
<img width="1196" height="866" alt="Sales  By State" src="https://github.com/user-attachments/assets/7ab66dc8-0a81-418d-90ff-3eea0701c068" />
<img width="951" height="838" alt="Sales  From Highest to Lowest" src="https://github.com/user-attachments/assets/9897164d-0678-4c2e-9b37-70cc5167dc06" />

### Growth Rates
* São Paulo had the highest overall state level growth at 37.47% over the two years.
* Spring had the highest seasonal growth rate, contributing approximately R$1.8 million across both years.
* May stood out as a consistent month of high growth yearly.
<img width="272" height="85" alt="state growth rate" src="https://github.com/user-attachments/assets/a8ed2b00-5901-458a-9b04-2ae9d03f5286" />
<img width="952" height="852" alt="Growth Rate  Monthly   Yearly" src="https://github.com/user-attachments/assets/35476d11-695e-4c23-93f4-1c8173b3ae50" />
<img width="264" height="85" alt="Top Month" src="https://github.com/user-attachments/assets/e69309b8-f367-40d3-a283-15e14d1bbe65" />

### Refund Rates
* Summer recorded the highest seasonal refund rate at 0.90%, though remains within acceptabel bounds.
* The sate with the highest refund rate was Rondônia, likely due to the its geographical distance from the main state.
* In 2023, the peak refund month was March at 1.59%, whereas in 2024 July had the highest rate at 1.81%.
<img width="570" height="87" alt="Refunds" src="https://github.com/user-attachments/assets/5b736b92-56cd-4d4b-8e12-af58ee4a1951" />
<img width="908" height="838" alt="Refund Rate  By Months" src="https://github.com/user-attachments/assets/056596f8-9061-4f9d-a6b6-984b01c9d1b7" />

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
* Transactions with R$0 were assumed to not be valid.

### Assumptions and Caveats
* Orders with status ```delivered```, ```invoiced```, ```processing```, ```approved```, ```shipped```, and ```unavailable``` were assumed to be paid orders.
* Orders with status ```canceled``` were categorized as cancelled, and ```created``` as never paid.
<img width="200" height="214" alt="image" src="https://github.com/user-attachments/assets/b20322bb-9bdf-40a2-beeb-8cdccb3dbd72" />

* R$0 Transactions were kept in the dataset but filtered out when creating the charts.
---
* See the raw data and my cleaning, and pivot tables in the Excel Workbook above
* See my SQL Queries in the SQL file.
* See my data cleaning and visualization in the above.


