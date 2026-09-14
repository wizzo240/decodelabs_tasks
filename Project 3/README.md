# Project 3: SQL Data Analysis Report

## Overview

**Goal:** Use SQL queries to extract insights from an e-commerce sales dataset.

**Tool used:** MySQL Workbench

**Dataset:** `ecommerce_sales` table (schema: `decodelabs_project_3`)
Contains order-level e-commerce data including OrderID, Date, CustomerID, Product, Quantity, UnitPrice, ShippingAddress, PaymentMethod, OrderStatus, TrackingNumber, ItemsInCart, CouponCode, ReferralSource, and TotalPrice.

**Total records analyzed:** 682 orders

---

## Methodology

The analysis was performed using core SQL techniques:
- **SELECT** statements to retrieve and inspect data
- **WHERE** clauses to filter orders by status, payment method, and value
- **ORDER BY** to rank results
- **GROUP BY** combined with **COUNT, SUM, and AVG** to summarize the dataset
- **HAVING** to filter aggregated results

The full set of queries used is available in `project3_analysis.sql`.

---

## Key Findings

### 1. Most Frequently Ordered Products

| Product | Total Orders |
|---------|--------------|
| Tablet  | 104          |
| Phone   | 103          |
| Printer | 101          |
| Desk    | 97           |
| Laptop  | 95           |

Tablets and Phones are nearly tied as the most frequently ordered items, each accounting for around 15% of all orders.

### 2. Revenue by Product

| Product | Total Revenue |
|---------|---------------|
| Phone   | $53,817.20    |
| Tablet  | $49,542.90    |
| Laptop  | $46,519.90    |
| Printer | $45,719.30    |
| Desk    | $43,228.30    |

Despite Tablets having slightly more orders, **Phones generate the most total revenue**, suggesting a higher average price per unit or larger order quantities per transaction.

### 3. Units Sold (Quantity) by Product

| Product | Total Units Sold |
|---------|-------------------|
| Chair   | 249               |
| Printer | 231               |
| Laptop  | 230               |
| Desk    | 220               |
| Phone   | 214               |

Interestingly, Chairs lead in total units sold even though they don't top the order-count or revenue rankings — this points to customers typically buying chairs in bulk (higher quantity per order).

### 4. Average Order Value by Payment Method

| Payment Method | Avg. Order Value |
|----------------|-------------------|
| Credit Card    | $498.14           |
| Online         | $490.30           |
| Cash           | $475.04           |
| Debit Card     | $444.02           |
| Gift Card      | $427.24           |

Customers paying by **Credit Card** tend to spend the most per order on average, while **Gift Card** users spend the least — possibly because gift cards have fixed/limited balances that cap spending.

---

## Conclusion

This analysis shows clear differences between order frequency, revenue, and unit volume across products — a reminder that "most ordered" doesn't always mean "most profitable." Phones stand out as the top revenue driver despite Tablets holding a slight edge in order count, while Chairs reveal a bulk-purchasing pattern. Payment method also correlates with spending behavior, with Credit Card transactions carrying the highest average value.

## Files in this repository

- `project3_analysis.sql` — full SQL script with all queries used in this analysis
- `README.md` — this report
