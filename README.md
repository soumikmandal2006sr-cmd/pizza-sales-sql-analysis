# 🍕 Pizza Hut Sales Data Analysis Using SQL

<div align="center">

### *Where Every Slice Became an Insight.*

A business-oriented SQL analytics project focused on uncovering sales patterns, customer behavior, revenue trends, and operational insights from Pizza Hut sales data.

</div>

## 📌 Project Overview

This project focuses on analyzing Pizza Hut sales data using SQL to uncover valuable business insights from customer orders, pizza sales, revenue trends, and ordering patterns.

The analysis was performed using relational database concepts, SQL joins, aggregate functions, grouping, filtering, and advanced analytical queries.

> *Where every slice became an insight.*

---

# 🎯 Objectives

The main objectives of this project are to:

* Analyze customer ordering behavior
* Identify top-selling pizzas and categories
* Calculate revenue and sales performance
* Discover peak ordering hours and trends
* Perform business-oriented SQL analysis
* Strengthen SQL problem-solving and analytical skills

---

# 🗂️ Database Schema

The project consists of 4 relational tables:

## 1. `orders`

Contains order date and time information.

| Column Name | Description     |
| ----------- | --------------- |
| order_id    | Unique order ID |
| order_date  | Date of order   |
| order_time  | Time of order   |

---

## 2. `order_details`

Contains order quantity and pizza details.

| Column Name      | Description             |
| ---------------- | ----------------------- |
| order_details_id | Unique order details ID |
| order_id         | Order reference         |
| pizza_id         | Pizza reference         |
| quantity         | Quantity ordered        |

---

## 3. `pizzas`

Contains pizza pricing and size information.

| Column Name   | Description          |
| ------------- | -------------------- |
| pizza_id      | Unique pizza ID      |
| pizza_type_id | Pizza type reference |
| size          | Pizza size           |
| price         | Pizza price          |

---

## 4. `pizza_types`

Contains pizza category and ingredient details.

| Column Name   | Description          |
| ------------- | -------------------- |
| pizza_type_id | Unique pizza type ID |
| name          | Pizza name           |
| category      | Pizza category       |
| ingredients   | Ingredients used     |

---

# 🔗 Entity Relationship Overview

```text
pizza_types
      ↓
    pizzas
      ↓
order_details
      ↓
    orders
```

---

# 🛠️ Tools & Technologies Used

* SQL
* MySQL
* Relational Database Management System (RDBMS)
* GitHub
* Data Analysis Concepts

---

# 📊 Project Analysis Categories

## 🍕 Foundational Analysis

### *Laying the Crust: Core SQL Insights*

* Retrieve the total number of orders placed
* Calculate total revenue generated from pizza sales
* Identify the highest-priced pizza
* Determine the most common pizza size ordered
* List the top 5 most ordered pizza types along with their quantities

---

## 📈 Business Insights Analysis

### *Adding the Toppings: Data-Driven Exploration*

* Join relevant tables to calculate total quantity ordered by pizza category
* Analyze the distribution of orders by hour of the day
* Determine category-wise distribution of pizzas
* Calculate the average number of pizzas ordered per day
* Identify the top 3 most ordered pizza types based on revenue

---

## 🚀 Advanced Revenue Intelligence

### *The Chef’s Special: Strategic SQL Analytics*

* Calculate percentage contribution of each pizza type to total revenue
* Analyze cumulative revenue generated over time
* Determine the top 3 revenue-generating pizza types for each category

---

# 🔍 Key Business Insights

* Large and medium-sized pizzas contributed significantly to total order volume
* Peak ordering activity was observed during lunch and evening hours
* A small number of pizza types generated a major portion of total revenue
* Category-level analysis helped identify the best-performing pizza segments
* Revenue trend analysis revealed cumulative business growth patterns over time
* Customer ordering behavior showed strong preference patterns across pizza categories

---

# 📚 SQL Concepts Used

This project demonstrates practical implementation of:

* INNER JOIN
* GROUP BY
* ORDER BY
* Aggregate Functions

  * SUM()
  * COUNT()
  * AVG()
* Subqueries
* Common Table Expressions (CTEs)
* Date & Time Functions
* Aliasing
* Filtering & Sorting

---

# 📁 Project Structure

```text
Pizza-Hut-SQL-Project/
│
├── data/
│   ├── orders.csv
│   ├── order_details.csv
│   ├── pizzas.csv
│   └── pizza_types.csv
│
├── queries/
│   ├── basic_queries.sql
│   ├── intermediate_queries.sql
│   └── advanced_queries.sql
│
├── presentation/
│   └── Pizza_Hut_SQL_Analysis_Presentation.pptx
│
└── README.md
```

---

# 📌 Sample Analysis Query

## Top 5 Most Ordered Pizza Types

```sql
SELECT
    pizza_types.name,
    SUM(order_details.quantity) AS quantity
FROM pizza_types
JOIN pizzas
    ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details
    ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY quantity DESC
LIMIT 5;
```

---

# 💡 Learning Outcomes

Through this project, I improved my understanding of:

* Relational database design
* Real-world SQL analysis
* Business-oriented problem solving
* Data aggregation techniques
* Query optimization concepts
* Translating raw data into actionable insights

---

# 🌟 Future Improvements

Potential future enhancements for this project:

* Build interactive dashboards using Power BI or Tableau
* Perform customer segmentation analysis
* Create sales forecasting models
* Integrate Python for advanced analytics
* Develop an end-to-end business intelligence dashboard

---

# 🤝 Let’s Connect

## Soumik Mandal

### *Data Science Student | Aspiring Data Analyst*

📌 Passionate about:

* SQL & Database Management
* Data Analytics
* Business Intelligence
* Data Visualization
* Problem Solving

### 🔗 Connect With Me

* LinkedIn: [https://linkedin.com/](https://linkedin.com/)
* GitHub: [https://github.com/](https://github.com/)
* Email: [your-email@example.com](mailto:your-email@example.com)

📍 West Bengal, India

---

# 🍕 Final Note

> *Behind every pizza order lies a pattern waiting to be queried.*

Thank you for exploring this SQL analytics project.
