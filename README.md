
# 🛒 Consumer Patterns in Grocery Retail: A Data-Driven Approach

This project provides a deep dive into grocery retail data to uncover sales trends, consumer preferences, and operational opportunities using **MySQL**, **Excel**, **Python**, and **Power BI**. The analysis is based on a **sample of BlinkIT grocery data**, containing over **8,500 transaction records** across various outlet types and product categories.

---

## 🎯 Project Objective
To perform an end-to-end analysis of grocery retail data using a small-scale sample to:
- Identify trends in product sales and customer satisfaction
- Analyze outlet-level performance by region, size, and type
- Create dynamic dashboards for real-time business decisions
- Build KPIs like revenue, visibility, rating, and store performance

---

##  Dataset Overview
- **Source**: Sample data based on BlinkIT grocery retail operations  
- **Records**: 8,523 rows  
- **Format**: CSV (`BlinkIT Grocery Data.csv`)  
- **Columns**:  
  - `Item_Identifier`, `Item_Type`, `Item_Weight`, `Item_Visibility`, `Item_Fat_Content`
  - `Sales`, `Rating`
  - `Outlet_Identifier`, `Outlet_Type`, `Outlet_Size`, `Outlet_Location_Type`, `Outlet_Establishment_Year`

---

##  Tools Used
-  **MySQL** – Schema creation, KPI queries, and joins  
-  **Excel** – Data cleaning, pivot summaries  
-  **Python (Pandas, Seaborn, Matplotlib)** – EDA & visual analysis  
-  **Power BI** – Dashboard creation with filters, slicers & DAX metrics

---

##  SQL Insights (MySQL)
Used MySQL to:
- Aggregate sales by outlet type and city tier  
- Identify top-selling product categories  
- Calculate average customer ratings  
- Join item-level and outlet-level data for combined metrics  
- Filter out low-visibility, high-sales outliers for marketing targets

---

## 📊 Power BI Dashboard
- Revenue, Ratings, and Visibility KPIs
- Sales by Product Type and Outlet Type
- Average Ratings by Outlet
- Product-level contribution to total revenue
- Sales vs Outlet Size and Age
- Tier-wise comparison of outlet performance
- Fat content vs Sales distribution
- Interactive filters for outlet, item type, and location

![image](https://github.com/user-attachments/assets/27dafde9-a2b0-4de5-86e7-23b50db7b5ad)

---

## 📌 Key Findings from Sample Data
| Insight Area             | Key Takeaways                                                  |
|--------------------------|----------------------------------------------------------------|
| 🛍 Top Products           | Fruits & Vegetables, Frozen Foods lead in volume              |
| 🏬 Best Outlet Type       | Supermarket Type1 shows highest total and average sales       |
| 🌇 Location Insights      | Tier 1 outlets outperform Tier 2 and Tier 3 on average        |
| 👁 Visibility Effect      | Moderate visibility often leads to higher revenue             |
| 📈 Rating Consistency     | Majority of products maintain a high (5.0) customer rating     |
| 🧍 Customer Preference    | Regular fat items sell slightly better than low-fat variants  |

---

## ✅ Conclusion
Although based on a sample, this project demonstrates how real-world grocery data can be transformed into strategic insights. Businesses can:
- Benchmark outlet performance across city tiers
- Optimize inventory based on item visibility and category
- Tailor promotions based on consumer preference
- Use customer ratings to improve product focus

This project showcases a **multi-tool analytical approach** combining **MySQL**, **Python**, **Excel**, and **Power BI** in a real-world business context.

