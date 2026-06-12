# 🛒 Retail Sales Analytics
### SQL + Power BI | End-to-End Portfolio Project

---

## 👋 About This Project

I'm Kamalnath, a B.Sc. Data Science fresher from Hosur, 
Tamil Nadu. This is my end-to-end data analytics 
portfolio project where I analyzed a retail store's 
4 years of sales data (2014–2017) to uncover hidden 
business insights.

I used **PostgreSQL** to write 10 structured SQL queries 
(from basic aggregations to advanced window functions) 
and built an **interactive Power BI dashboard** to 
present the findings visually.

> "Data told me that the company's #1 revenue customer 
> was actually generating a LOSS. That's the power of 
> data analytics."

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| PostgreSQL | Writing & running SQL queries |
| pgAdmin 4 | Query execution & result viewing |
| Power BI Desktop | Building interactive dashboard |
| GitHub | Version control & sharing |

---

## 📂 About the Dataset

- **Source:** Kaggle — Superstore Sales Dataset
- **Records:** 9,994 transactions
- **Period:** 2014 – 2017 (4 years)
- **Columns:** 21 fields including Order ID, Customer, 
  Category, Sales, Profit, Discount, Region, Ship Mode

---

## 🗄️ Database Schema

```sql
Table: retail_sales
├── row_id          INTEGER
├── order_id        VARCHAR
├── order_date      DATE
├── ship_date       DATE
├── ship_mode       VARCHAR
├── customer_id     VARCHAR
├── customer_name   VARCHAR
├── segment         VARCHAR
├── country         VARCHAR
├── city            VARCHAR
├── state           VARCHAR
├── postal_code     VARCHAR
├── region          VARCHAR
├── product_id      VARCHAR
├── category        VARCHAR
├── sub_category    VARCHAR
├── product_name    VARCHAR
├── sales           NUMERIC
├── quantity        INTEGER
├── discount        NUMERIC
└── profit          NUMERIC
```

---

## 📊 10 SQL Queries — Business Questions

I structured my analysis as 10 business questions,
each building on the previous one — from basic 
aggregations to advanced window functions.

| # | Business Question | SQL Concept |
|---|-------------------|-------------|
| Q1 | How is the company performing overall? | SUM, AVG, COUNT |
| Q2 | Which category makes the most profit? | GROUP BY, ORDER BY |
| Q3 | Which region generates the most revenue? | GROUP BY, ROUND |
| Q4 | Who are our top 10 customers by revenue? | ORDER BY, LIMIT |
| Q5 | How does sales trend month by month? | EXTRACT, TO_CHAR |
| Q6 | Which sub-categories are losing money? | GROUP BY, ASC |
| Q7 | Which shipping mode is most profitable? | Date Arithmetic |
| Q8 | How does discount level affect profit? | CASE WHEN |
| Q9 | Who are top customers by profit per region? | RANK(), PARTITION BY |
| Q10 | What is month-over-month sales growth? | LAG(), Subquery |

---

## 🔍 Key Business Insights

### 💰 Overall Business Health
- Total Sales: **$2.29M**
- Total Profit: **$285.78K**
- Total Unique Orders: **5,009**
- Overall Profit Margin: **12.47%**

---

### 📦 Category Performance

Technology is clearly the winner — lowest discounts,
highest margins. Furniture is a serious problem area —
despite high sales, it's barely breaking even.

| Category | Sales | Profit | Margin |
|----------|-------|--------|--------|
| Technology | $8,36,154 | $1,45,455 | 17.40% 🏆 |
| Office Supplies | $7,19,046 | $1,22,490 | 17.04% ✅ |
| Furniture | $7,41,999 | $18,451 | 2.49% 🚨 |

---

### 🌍 Regional Performance

West leads comfortably. Central region is concerning —
high order volume but very low margins, pointing to
a discounting problem.

| Region | Orders | Profit | Margin |
|--------|--------|--------|--------|
| West | 1,611 | $1,08,418 | 14.94% 🏆 |
| East | 1,401 | $91,522 | 13.48% ✅ |
| South | 822 | $46,749 | 11.93% |
| Central | 1,175 | $39,706 | 7.92% 🚨 |

---

### 🎯 The Discount Problem

This was my biggest finding. Discounts above 20%
actively destroy profit — the business is literally
losing money by selling more.

| Discount Level | Orders | Profit | Margin |
|----------------|--------|--------|--------|
| 0% — No Discount | 2,644 | $3,20,987 | 29.51% 🏆 |
| 1–10% — Low | 89 | $9,029 | 16.61% ✅ |
| 11–20% — Medium | 2,436 | $91,757 | 11.58% ⚠️ |
| 21–30% — High | 211 | -$10,369 | -10.05% 🚨 |
| 31%+ — Very High | 888 | -$1,25,007 | -48.16% 💀 |

> The 31%+ discount bucket alone generated $2.59L 
> in sales but lost $1.25L in profit.

---

### 👥 Customer Insights

High revenue doesn't always mean high profit.
Sean Miller proved that the hard way.

| Customer | Revenue | Profit | Margin |
|----------|---------|--------|--------|
| Sean Miller | $23,669 | -$1,787 | -7.55% 🚨 |
| Tamara Chand | $18,437 | $8,745 | 47.43% 🏆 |
| Raymond Buch | $14,345 | $6,807 | 47.45% 🏆 |

---

### 📦 Sub-Category Deep Dive

Drilling into Furniture revealed that Tables and
Bookcases are the real culprits — both running at
a loss due to excessive discounting.

| Sub-Category | Sales | Profit | Avg Discount |
|--------------|-------|--------|-------------|
| Tables | $2,06,965 | -$17,725 | 26.1% 🚨 |
| Bookcases | $1,14,880 | -$3,472 | 21.1% 🚨 |
| Furnishings | — | — | 14.24% ✅ |
| Phones | — | — | 13.49% ✅ |
| Binders | — | — | 14.86% ✅ |

---

### 🚢 Shipping Mode Analysis

| Ship Mode | Orders | Profit | Margin | Avg Days |
|-----------|--------|--------|--------|----------|
| Standard Class | 2,994 | $1,64,089 | 12.08% | 5.0 days |
| Second Class | 964 | $57,446 | 12.51% | 3.2 days |
| First Class | 787 | $48,969 | 13.93% 🏆 | 2.2 days |
| Same Day | 264 | $15,891 | 12.38% | 0.0 days |

---

### 📅 Seasonal Trends

- **September** consistently shows 150–200% 
  month-over-month growth every year
- **Q4 (October–December)** is peak sales season
- **March** shows sudden spike pattern each year

---

## 📈 Power BI Dashboard

![Dashboard](dashboard/dashboard_screenshot.png)

### Dashboard Components:
- **KPI Cards** — Total Sales, Profit & Quantity at a glance
- **Bar Chart** — Category-wise profit comparison
- **Donut Chart** — Region-wise sales distribution
- **Line Chart** — Monthly sales trend (2014–2017)
- **Scatter Plot** — Discount vs Profit by category
- **Key Insights Text Box** — Business findings summary

---

## 💡 Business Recommendations

Based on my analysis, here are 5 actionable 
recommendations:

**1. Cap all discounts at 20%**
Beyond this point, every sale generates a loss.
The 31%+ group alone lost $1.25L.

**2. Fix the Tables sub-category**
26% average discount causing $17,725 in losses.
Reduce to max 10% immediately.

**3. Investigate Central region**
1,175 orders but only 7.92% margin.
Heavy discounting is the likely root cause.

**4. Review Sean Miller's account**
#1 revenue customer generating net loss of $1,787.
Needs immediate commercial review.

**5. Invest in September marketing**
Consistently the highest growth month every year.
Targeted campaigns could significantly boost 
annual revenue.

---

## 🚀 How to Reproduce This Project

### Step 1 — PostgreSQL Setup
```sql
-- Create database
CREATE DATABASE retail_sales_db;

-- Create table
CREATE TABLE retail_sales (
    row_id        INTEGER,
    order_id      VARCHAR(20),
    order_date    DATE,
    ship_date     DATE,
    ship_mode     VARCHAR(30),
    customer_id   VARCHAR(20),
    customer_name VARCHAR(50),
    segment       VARCHAR(20),
    country       VARCHAR(50),
    city          VARCHAR(50),
    state         VARCHAR(50),
    postal_code   VARCHAR(10),
    region        VARCHAR(20),
    product_id    VARCHAR(20),
    category      VARCHAR(30),
    sub_category  VARCHAR(30),
    product_name  VARCHAR(150),
    sales         NUMERIC(10,2),
    quantity      INTEGER,
    discount      NUMERIC(5,2),
    profit        NUMERIC(10,2)
);

-- Import CSV via pgAdmin
-- Right click table → Import/Export → Select CSV
```

### Step 2 — Run SQL Queries
Open each `.sql` file from the `sql/` folder 
in pgAdmin and execute in order from Q1 to Q10.

### Step 3 — Power BI Dashboard

Open Power BI Desktop
Get Data → Text/CSV
Select retail_sales.csv → Load
Recreate visuals as per dashboard screenshot


---

## 📁 Repository Structure
retail-sales-analytics/

│

├── sql/

│   ├── q1_kpi_summary.sql

│   ├── q2_category_analysis.sql

│   ├── q3_regional_analysis.sql

│   ├── q4_top_customers.sql

│   ├── q5_monthly_trend.sql

│   ├── q6_subcategory_analysis.sql

│   ├── q7_shipping_mode.sql

│   ├── q8_discount_impact.sql

│   ├── q9_customer_ranking.sql

│   └── q10_mom_growth.sql

│

├── dashboard/

│   ├── Retail_Sales_Dashboard.pbix

│   └── dashboard_screenshot.png

│

├── retail_sales.csv

└── README.md

---

## 👤 About Me

I'm a B.Sc. Data Science fresher (2026) from Hosur,
Tamil Nadu, actively looking for Data Analyst and
Business Analyst roles.

I also run a YouTube channel called **Daily Data Dose**
(@DailyDataDose-01) where I teach Data Analytics in
Thanglish — making data accessible for Tamil-speaking
beginners.

**Skills:** SQL (PostgreSQL) · Power BI · Python · 
Advanced Excel

📫 Open to opportunities — feel free to connect!

---

## 📊 Project Stats

![GitHub repo size](https://img.shields.io/github/repo-size/kamalnath16/retail-sales-analytics)
![GitHub last commit](https://img.shields.io/github/last-commit/kamalnath16/retail-sales-analytics)

---

*Built with curiosity and lots of pgAdmin tabs 😄*

*— Kamal, 2026*
