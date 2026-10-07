# Pharmacy Management System (Database)

Introduction to Databases project – Umm Al-Qura University (Section 2, Group 5, Dr. Wajanat Rayes).
A MySQL database that manages medicines, customers and purchases for a pharmacy.

## Design

- **Customer** (1) —MAKES— (N) **Purchase**
- **Purchase** (M) —CONTAINS— (N) **Medicine**, implemented by the associative table `Contains_Details` (quantity, subtotal)

| Table | Columns |
|---|---|
| Customer | **customer_id**, name, phone_number, age |
| Medicine | **medicine_id**, name, price, quantity_in_stock |
| Purchase | **purchase_id**, purchase_date, total_amount, *customer_id* (FK) |
| Contains_Details | **purchase_id**, **medicine_id** (composite PK / FKs), quantity, subtotal |

## Files

- [`schema.sql`](schema.sql) – tables and sample data
- [`queries.sql`](queries.sql) – SELECT, COUNT, AVG, JOIN, subquery, view

## Run

```bash
mysql -u root -p < schema.sql
mysql -u root -p < queries.sql
```

## Tools

draw.io (ER diagram & schema), MySQL Workbench, Canva (report design).
