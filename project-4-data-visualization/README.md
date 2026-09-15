# E-Commerce Sales Dashboard — Power BI

A Power BI dashboard analyzing 1,200 e-commerce orders (Jan 2023–Jun 2025) to surface revenue trends, order fulfillment patterns, and payment behavior.

![Dashboard](dashboard-screenshot.png)

## Overview

**Dataset:** 1,200 orders with fields for Date, Product, Quantity, UnitPrice, TotalPrice, OrderStatus, PaymentMethod, and ReferralSource.

**Tool:** Power BI

**Goal:** Build a multi-chart dashboard that goes beyond raw numbers to tell a clear story about sales performance.

## Key Metrics

| Metric | Value |
|---|---|
| Total Revenue | $1.26M |
| Total Orders | 1,200 |
| Average Order Value | $1,053.97 |

## Visuals

- **Revenue by Product** — bar chart showing revenue is fairly evenly spread across all 7 products (Chair leads at $196K, Phone lowest at $152K), suggesting no single product drives the business disproportionately.
- **Order Status Breakdown** — donut chart showing an almost even split across 5 statuses (Cancelled, Returned, Pending, Shipped, Delivered), each landing between 19–21% of total orders.
- **Monthly Revenue Trend** — line chart across the full date range, showing high month-to-month volatility with no sustained growth or decline, peaking in June 2024.
- **Average Order Value by Payment Method** — bar chart showing Credit Card orders have the highest average value ($1,128) compared to Debit Card ($1,002), a ~12.6% spread.

## Key Findings

1. **Product mix isn't a strong differentiator.** Revenue is nearly flat across all 7 products — the business isn't being carried by one hero product.
2. **Order status is evenly distributed**, including a meaningful share of Cancelled and Returned orders — worth deeper investigation into fulfillment or return causes in a follow-up analysis.
3. **Revenue is volatile month-to-month** with no clear seasonal or growth trend across 2.5 years of data.
4. **Payment method has a modest but real effect on order value** — Credit Card customers spend more per order on average than Debit Card customers.

## Files

- `dashboard.pbix` — full Power BI file
- `dashboard-screenshot.png` — static preview of the dashboard
- `dataset.xlsx` — source data
