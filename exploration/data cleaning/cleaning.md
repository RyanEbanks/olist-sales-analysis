# Olist Sales Analysis

## Table of Contents
- [Introduction](#introduction)
- [Data Cleaning](#data-cleaning)
- [Calculated Fields](#calculated-fields)
- [Conclusion](#conclusion)

## Introduction
* __Purpose__: The purpose of this project is to analyze Olist's sales data for the years 2023 and 2024, through which key sales trends, growth rates and refund rates will be identified. The project aims to to provide insights for future growth to Olist through its exploration.
* __Dataset Overview__:
    * This project uses three primary datasets:
        1. ```customers.csv```: This dataset contains the customers unique ID which allows us to identify by count the amount of persons per state who purchase items.
        2. ```orders.csv```: This dataset provides the customers orders along with their order status, order purchase date, and order purchase approval date. These three columns allow us to decipher whether or not an item was actually bought.
        3. ```order_payments.csv```: This dataset provides the most crucial aspect which is the payment value from which we calculate the sales the company has made.
      
These datasets together allow for a comprehensive view on Olists sales activies.

---

## Data Cleaning
The csv files were loaded into excel to begin preparation.

Each column was filtered for blanks and replaced with ```\N``` as this is easier for SQL to register as a blank space when reading csv files.
Transactions with $0 and any opther outliers were taken into account and assessed to see if it needed to be brought up in stakeholder clarification.
Data was then ensured to be accurate.

```order_status``` was then cleaned by creating a pivot table to find all categories related to the order.

<img width="203" height="212" alt="order statuses" src="https://github.com/user-attachments/assets/bef1826e-3ffc-4a32-b7b7-b8732c88e844" />

After the categories were deciphered a excel query was written to group them into easier categories ```paid```, ```unpaid```, ```cancelled```, ```never paid```.
```
=IF(C2="delivered","paid",IF(C2="invoiced","paid",IF(C2="processing","paid",IF(C2="approved","paid",IF(C2="shipped","paid",IF(C2="unavailable","paid",IF(C2="canceled","cancelled",IF(C2="created","never paid"))))))))
```
* The assumption behind whether it is ```paid```, ```unpaid```, ```cancelled``` or ```never paid``` is based on the order purchase date, order approved date and order delivery date.
* An order can be purchased but not yet delivered which is why order_delivered_customer_date was not taken into consideration.

The order approved date was then cleaned by trimming the time from the date & time column as the time is not needed for calculations based on months and years.

__The major problems at hand were recorded in a separate sheet__
<img width="1230" height="55" alt="order_dataset_problems" src="https://github.com/user-attachments/assets/bb060381-177a-453d-839b-46aaeddd26db" />
<img width="1462" height="93" alt="order_payments_dataset_problems" src="https://github.com/user-attachments/assets/443d3f9a-4854-4f8a-8429-96ab499f8905" />
* Customers did not have any direct problems after checking for duplicate unique ID's and creating a pivot table to look at the states
<img width="202" height="612" alt="customer_state_img" src="https://github.com/user-attachments/assets/565096c2-0311-446d-940b-f6125a838855" />

## Calculated Fields
Calculated fields were then created in Tableau in order to arrive at the proper visualizations.
* Months were joined together by as a string using a calculated field to extract the month and year separately from the order was approved then joined together as a String.
<img width="695" height="329" alt="months and years" src="https://github.com/user-attachments/assets/da0fb58d-6301-4a16-9f6e-48d0fcd4b1c3" />

* Seasons was calculated by using a case statement to compare months in numbers to a season. The month function extracts the month in numbers.
<img width="695" height="330" alt="seasons" src="https://github.com/user-attachments/assets/01093597-d01a-4427-8954-2094e9c9e113" />

* Total paid used a Fixed Level-of-Detail (LOD) based on ```order_id``` and Max function because Max gives a single value and avoids the duplication of values in a 1 to many relationship (1 customer, many orders).
<img width="693" height="330" alt="total paid" src="https://github.com/user-attachments/assets/d0395151-9f51-4cf5-8cec-8d8d6df83490" />

* Refund Rate was calculated using the formula cancelled items/ total items
<img width="693" height="330" alt="refund rate" src="https://github.com/user-attachments/assets/e6f386cf-da3b-4fea-997a-40e3342c9da5" />

## Conclusion
* See the more details in the [Main Project](../../README.md)


