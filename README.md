# 🍩 SQL Project – Donut Shop Database

This project involves the design of a relational database for a donut shop. It includes the definition of tables with their relationships, as well as sample data to simulate a real-world environment.

## 📄 Schema Description

The following tables are created:

- `ingredients`: List of ingredients with unit of measure and price per unit.
- `donuts`: Information about each donut (name, price, gluten-free status).
- `donut_ingredients`: Junction table representing a **many-to-many** relationship between donuts and ingredients.
- `customers`: Customers who place orders.
- `orders`: Orders placed by customers, including the order date.
- `order_donuts`: **Many-to-many** relationship between orders and donuts, including quantity.

## 🔗 Relationships

- A **donut** can have multiple **ingredients**, and an **ingredient** can be used in multiple donuts.
- A **customer** can place multiple **orders**.
- An **order** can contain multiple **donuts** in different quantities.

## 🧪 Sample Data

The file includes example inserts:
- 5 ingredients
- 2 donut types
- 1 customer
- 1 order containing 2 different donuts

## 🛠️ Technologies

- SQL
- Compatible with SQLite

## ▶️ How to Run

If using SQLite:

```bash
sqlite3 donuts.db < schema.sql
