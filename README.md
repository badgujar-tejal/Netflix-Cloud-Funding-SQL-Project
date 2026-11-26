# 🎬 Netflix Catalog Analysis (`Netflix - Cloud Funding`)

A SQL exploratory data analysis (EDA) project designed to organize, count, and uncover catalog trends across Netflix movies and TV shows.

---

## 📋 Overview
This repository contains a SQL script that initializes the `netflix_cloud_funding` database and runs structured queries against the `netflix_titles` dataset to extract key performance indicators (KPIs), content breakdowns, and release trends over time.

---

## 🖼️ Project Screenshots / Dashboard Preview
> Replace the placeholder links below with your actual screenshot paths (e.g., `assets/kpi-output.png`) once uploaded to your repository.

### 1. Top KPI Summary
![Netflix-Cloud-Funding-SQL-Project](Top%20KPI's%20Preview.png)

### 2. Country Vs Year Distribution Preview
![Netflix-Cloud-Funding-SQL-Project](Country%20Vs%20Year%20Distribution%20Preview.png)

### 3. Top Countries
![Netflix-Cloud-Funding-SQL-Project](Top%20Countries%20Preview.png)

---

## 🔍 What the SQL Script Does

### 1. Database Setup & Data Inspection
* **Creates Workspace**: Initializes and selects the `netflix_cloud_funding` database.
* **Data Verification**: Previews the first 10 rows (`LIMIT 10`), inspects the full `netflix_titles` table, and calculates the total record count using `COUNT(show_id)`.

### 2. Headline Summary Numbers (KPIs)
A single consolidated query extracts five core catalog metrics:

| KPI Metric | Description |
| :--- | :--- |
| **`Total_Movies`** | Total count of titles categorized as `"Movie"`. |
| **`Total_TV_Shows`** | Total count of titles categorized as `"TV Show"`. |
| **`Most_Frequent_Director`** | Director with the highest number of titles (excluding blank/null values). |
| **`Top_Genre`** | Most frequent category combination in `listed_in`. |
| **`Latest_Release_Year`** | Most recent release year present in the dataset. |

### 3. Detailed Catalog Breakdowns
* **Movies vs. TV Shows**: Compares overall volume between films and TV series.
* **Titles by Release Year**: Tracks yearly catalog additions chronologically.
* **Top 5 Countries**: Ranks the top 5 content-producing countries (`LIMIT 5`).
* **Age Ratings Distribution**: Orders titles by maturity rating (e.g., `TV-MA`, `PG-13`) from highest to lowest.
* **Top 10 Genres**: Lists the 10 most common genres on the platform (`LIMIT 10`).
* **Yearly Genre & Country Trends**: Cross-tabulates title counts by genre and country across release years.

---

## 🚀 How to Run This Project

1. **Clone the repository**
   ```bash
   git clone https://github.com
   cd netflix-cloud-funding-sql
   ```
2. **Create the database & import data**
   * Run `CREATE DATABASE netflix_cloud_funding;` and `USE netflix_cloud_funding;` in your SQL client (MySQL / MariaDB).
   * Import your `netflix_titles` CSV dataset into a table named `netflix_titles`.
3. **Execute the analysis script**
   * Open the `.sql` file in MySQL Workbench, DBeaver, or your preferred SQL editor and run the queries.

---

## ⚠️ Notes & Limitations
* **Catalog Metadata Only**: Despite the `netflix_cloud_funding` database name, this script analyzes show and movie metadata rather than financial or funding figures.
* **Prerequisites**: The script assumes the `netflix_titles` table has already been created and populated prior to execution.
* **Multi-Value Fields**: Columns like `listed_in` and `country` contain comma-separated values (e.g., `"Dramas, International Movies"`) that are grouped as exact strings rather than split individually.
