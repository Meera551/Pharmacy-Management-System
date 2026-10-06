# Pharmacy Management System

## Overview
This project presents a relational database system designed for managing pharmacy operations[span_0](start_span)[span_0](end_span). The system efficiently tracks medicines, customer details, and purchase transactions, helping optimize inventory control, reduce errors, and streamline daily pharmacy workflows[span_1](start_span)[span_1](end_span)[span_2](start_span)[span_2](end_span).

## System Architecture & Features
* **Customer Management:** Tracks customer profiles including ID, name, phone number, and age[span_3](start_span)[span_3](end_span).
* **Inventory Control:** Manages medicine details such as ID, name, unit price, and available stock quantities[span_4](start_span)[span_4](end_span).
* **Purchase Tracking:** Records transaction IDs, purchase dates, and total purchase amounts[span_5](start_span)[span_5](end_span)[span_6](start_span)[span_6](end_span).
* **Order Line Items:** Implements a many-to-many relationship using an associative entity (`Purchase_Details` / `Contains_Details`) to capture items, quantities, and subtotals per order[span_7](start_span)[span_7](end_span)[span_8](start_span)[span_8](end_span).

## Technical Implementation
* **Database Modeling:** Entity-Relationship (ER) Diagram & Relational Schema designed using *draw.io*[span_9](start_span)[span_9](end_span)[span_10](start_span)[span_10](end_span)[span_11](start_span)[span_11](end_span).
* **Database System:** Implemented on **MySQL Workbench**[span_12](start_span)[span_12](end_span).
* **SQL Operations Included:**
  * **Data Filtering:** `SELECT` queries with conditional filtering (`WHERE`)[span_13](start_span)[span_13](end_span).
  * **Aggregations:** Aggregate functions (`COUNT`, `AVG`) for analytics[span_14](start_span)[span_14](end_span)[span_15](start_span)[span_15](end_span).
  * **Relational Joins:** Multi-table `JOIN` operations connecting customers to their purchases[span_16](start_span)[span_16](end_span).
  * **Advanced Queries:** Subqueries (e.g., filtering items priced above average)[span_17](start_span)[span_17](end_span).
  * **Views:** Custom `VIEW` creation for simplified reporting on customer purchase histories[span_18](start_span)[span_18](end_span).

## Database Schema & Relationships
* **Customer to Purchase:** $1:N$ relationship (A customer can make multiple purchases)[span_19](start_span)[span_19](end_span).
* **Purchase to Medicine:** $M:N$ relationship resolved via `Contains_Details` associative entity[span_20](start_span)[span_20](end_span)[span_21](start_span)[span_21](end_span).

---
*Course Project for Introduction to Databases (Dr. Wajanat Rayes)*[span_22](start_span)[span_22](end_span)

