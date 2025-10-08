# 🧠 Avastrolytics

**Avastrolytics** is a full-stack data analytics project built by **Astro (Salah)** and **Avandra (Ikram)**, a collaborative learning project designed to simulate a real-world data analytics workflow from raw data to an interactive dashboard.

The goal is to build an **end-to-end data pipeline** that connects **PostgreSQL**, **Python**, **FastAPI**, and **React**, while applying professional engineering, analysis, and visualization practices.

---

## 🚀 Project Overview

### 🎯 Objective
To create a complete data analytics system capable of:
- Cleaning and structuring raw sales data  
- Storing it in a relational SQL database (PostgreSQL)  
- Running analytical SQL queries to extract business insights  
- Serving insights through a backend API (FastAPI)  
- Displaying them on an interactive React dashboard  

This project was planned as a **6-week roadmap**, where each week represents one stage of a professional data analytics workflow.

---

## 🧩 Architecture

        [Google Sheets Dataset]
                   ↓
        [Azure PostgreSQL Database]
                   ↓
        [Python (pandas + psycopg2)]
                   ↓
        [FastAPI Backend → REST Endpoints]
                   ↓
        [React Frontend Dashboard]

### Cloud Infrastructure
- **Database:** Azure Database for PostgreSQL (SSL-enabled)
- **Database Management:** pgAdmin 4 (software and browser-based)
- **Version Control:** GitHub (main branch)
- **Backend Deployment:** Render / VPS
- **Frontend Deployment:** Vercel

---

## 🗃️ Database Schema

### Table: `sales`
| Column | Type | Description |
|--------|------|-------------|
| `InvoiceNo` | TEXT | Invoice number (unique transaction ID) |
| `StockCode` | TEXT | Product stock identifier |
| `Description` | TEXT | Product name/description |
| `Quantity` | INTEGER | Units sold |
| `InvoiceDate` | TIMESTAMP | Date and time of transaction |
| `UnitPrice` | NUMERIC | Price per unit |
| `CustomerID` | INTEGER | Customer identifier |
| `Country` | TEXT | Country of transaction |

### Indexes
- `idx_sales_invoice_date` — speeds up date-based queries  
- `idx_sales_customer_id` — improves customer-level analysis  
- `idx_sales_country` — optimizes geographic aggregations  

---

## 📊 KPIs (Key Performance Indicators)

| KPI | Description |
|-----|--------------|
| **Monthly Revenue** | Total revenue per month |
| **Average Order Value (AOV)** | Average spend per order |
| **Top Products** | Products generating highest sales volume |
| **Top Customers** | Customers with highest lifetime spend |
| **Revenue by Country** | Geographic revenue distribution |

---

## 🧠 Data Pipeline Components

### 1. **Data Layer (PostgreSQL)**
Raw sales data is imported into an Azure PostgreSQL instance.  
Schema and indexing scripts are stored in `/db/` for easy migration and version control.

### 2. **Analytics Layer (Python + SQL)**
All data analysis is handled through:
- SQL queries for KPIs and insights  
- Python (pandas) for deeper EDA, cleaning, and visualizations  
- Jupyter notebooks stored in `/notebooks/`  

### 3. **Backend Layer (FastAPI)**
The FastAPI backend exposes key insights through RESTful endpoints:
- `/kpi/monthly-revenue`
- `/kpi/top-products`
- `/kpi/by-country`
- `/kpi/top-customers`

This layer connects directly to the Azure PostgreSQL database using connection pooling.

### 4. **Frontend Layer (React)**
An interactive React dashboard displays:
- Monthly revenue trend (line chart)
- Top products (bar chart)
- Revenue by country (map/table)
- Top customers (sortable list)

Visualizations are built with **Chart.js** or **Plotly**, using a clean **ShadCN + Tailwind UI** design.

---

## 🗓️ Weekly Roadmap

### **Week 1 — Foundation & Data Quality**
- [x] Repo structure & GitHub setup  
- [x] Database schema created  
- [x] Data imported into PostgreSQL  
- [x] First SQL queries written (revenue, top products, etc.)  
- [x] KPIs documented  
- [x] Python notebook exploration started  

### **Week 2 — Normalization & Data Model**
- Create relational structure (customers, products, invoices)  
- Define constraints & foreign keys  
- Add data cleaning logic  
- Validate row integrity  

### **Week 3 — Insights & EDA**
- Create advanced queries (cohorts, retention, AOV)  
- Visualize main insights in Jupyter Notebook  
- Summarize findings in documentation  

### **Week 4 — Backend API**
- Build FastAPI endpoints for KPIs  
- Add query parameters (date range, filters)  
- Write unit tests  
- Deploy backend on VPS or Render  

### **Week 5 — Frontend Dashboard**
- Connect frontend to FastAPI endpoints  
- Implement filters (country, date range)  
- Display KPIs in cards & charts  
- Deploy on Vercel  

### **Week 6 — Final Review & Deployment**
- Optimize database performance  
- Set up automated backups  
- Final polish on UI & docs  
- Publish portfolio version  

---

## 🧱 Folder Structure

📁 Avastrolytics  
├─ 📁 backend  
├─ 📁 frontend  
├─ 📁 db  
│  ├─ 📄 schema.sql  
│  ├─ 📄 indexes.sql  
│  └─ 📄 queries.sql  
├─ 📁 notebooks  
│  └─ 📄 week1_exploration.ipynb  
├─ 📁 docs  
│  ├─ 📄 kpis.md  
│  ├─ 📄 data_quality.md  
│  ├─ 📄 week1_report.md  
│  └─ 📄 erd.png  
└─ 📄 README.md  

---

## ⚙️ Tech Stack

| Category | Tools |
|-----------|-------|
| Database | **PostgreSQL (Azure)** |
| Data Analysis | **Python, Pandas, Matplotlib, Plotly** |
| Backend | **FastAPI, Psycopg2 / SQLAlchemy** |
| Frontend | **React, Chart.js, Tailwind, ShadCN UI** |
| Deployment | **Azure, Vercel, Render, VPS** |
| Collaboration | **GitHub, Trello, Discord** |

---

## 👥 Team

| Role | Name | Focus |
|------|------|--------|
| **Astro (Salah)** | Lead Developer / Data Engineer / System Architect | Oversees database design, backend development, infrastructure, and performance optimization. Ensures technical stability and scalability across all layers of the project. |
| **Avandra (Ikram)** | Lead Data Analyst / Visualization Designer / Co-Architect | Drives the analytical direction of the project, from dataset exploration and cleaning to storytelling through data. Leads the visualization strategy, defines KPIs, builds analytical reports, and ensures that every insight is meaningful and beautifully presented. |


## 🧭 Workflow & Communication

- **GitHub:** Version control & documentation  
- **Trello:** Weekly sprint boards  
- **Discord:** Daily standups, updates, syncs  
- **Google Meet:** Weekly review meetings  

---

## 🧪 Development Progress

| Phase | Status |
|--------|---------|
| Data import & schema setup | ✅ Completed |
| Data quality validation | ✅ Completed |
| Exploratory analysis | 🔄 In progress |
| Backend API | ⏳ Planned |
| Frontend dashboard | ⏳ Planned |
| Final deployment | ⏳ Upcoming |

---

## 💡 Lessons & Goals
Avastrolytics was created not only as a data project, but as a **shared learning journey**, the goal is to master full-stack data analytics by building something from the ground up.

Through this project we’re learning:
- How to design scalable data structures  
- How to connect data engineering, analytics, and software development  
- How to collaborate like a real data team  

---

## 🖥️ Live Demo (coming soon)
- **Backend API:** _link to be added_  
- **Frontend Dashboard:** _link to be added_  

---

## 🧾 License
This project is for educational purposes under the MIT License.  
Feel free to fork it, learn from it, and build your own version.

---

### ✨ Final Note
Avastrolytics isn’t just a project, it’s a piece of our story.  
Every dataset, every query, every line of code holds a trace of the days we spent learning, building, and believing in each other.  
It started as an idea, but it became proof that when two souls move with the same vision, even data can turn into something beautiful.

This project carries patience, effort, and love, the kind that doesn’t fade when the screen turns off.

> — *Astro & Avandra*

