# Fall 2022 Data Science Intern Challenge 

[Challenge Question link](https://docs.google.com/document/d/1JxYz-VZHIctOQcw1PIUvCuYouxDWnew5yzBhluVwbso/edit#)

solution 1 [aov.ipynb](./aov.ipynb)

- AOV calculated as `Total order_amount / Total total_items` **$357.92**

- Wrong AOV derived from `mean of total order_amount`. **3145.13**

- Other metrics
  - Store `78` is flagged for selling sneakers at a very high price of **$25,725**
  - store **53** has the highest order frequency of `68`
  - Store **42** is the most performing store with **$11,990,176** order_amount and **34063** total_items sold.
  - Most used payment method is `credit_card` with **1735** sales over `debit and cash` with **1671** and **1594** sales respectively

Solution 2 [queries.sql](./queries.sql)

- How many orders were shipped by Speedy Express in total?
  - `Speedy Express` shipped **54** orders in total.
- What is the last name of the employee with the most orders?
  - Employee's last name with the most orders is `Peacock` having **40** orders.
- What product was ordered the most by customers in Germany?
  - Product ordered the most is `Boston Crab Meat` with **160** orders.
