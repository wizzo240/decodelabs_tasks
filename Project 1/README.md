# Data Cleaning & Preparation

Project 1 repository for the Decode Labs data analytics internship, focusing on data cleaning and preparation.

## Overview

Clean data is the backbone of accurate insights. This project involved taking a raw e-commerce sales dataset and preparing it for analysis through a structured cleaning process.

## What I Did

**Handling Missing Values**
- Identified and addressed 309 missing values in the Coupon Code column
- Since it's a categorical field, filled blanks with "No Coupon Code" to preserve context without losing records

**Standardization**
Standardized all key categorical columns, including:
- Order ID
- Customer ID
- Product
- Shipping Address
- Payment Method
- Order Status
- Tracking Number
- Coupon Code
- Referral Source

**Data Formatting**
- Cleaned up Unit Price and Total Price columns
- Formatted consistently to one decimal place (previously mixed decimal places)

## Quality Assurance Checks

- ✅ Successfully handled all missing values
- ✅ Verified that no duplicates exist in the dataset
- ✅ Confirmed that all columns have the correct data types

## Tools Used

- Microsoft Excel
