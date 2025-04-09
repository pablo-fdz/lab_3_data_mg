# 🛫 Lab 3: Data Warehousing Project – 23D021: Data Management

## 📌 Overview

This project implements a Data Warehouse solution using a multidimensional model and an ETL process, based on specific analytical requirements. It integrates multiple data sources, prepares the data, and enables analysis through OLAP and ROLAP queries.

## 📁 Repository Structure

├── rolap_queries/                      # OLAP queries and notebook for analysis  
├── tables_dw/                          # SQL files for DW schema (ROLAP model)  
├── Lab_3_UML.png                       # UML diagram of the star schema(s)  
├── lab_3.ipynb                         # Main Jupyter Notebook for ETL and queries  
├── aircraft-manufaturerinfo-lookup.csv # CSV with aircraft manufacturer data  
├── README.md                           # Project documentation  
├── LICENSE                             # License information  
└── .gitignore                          # Git ignored files  

## 🧩 Input Data Sources

- **AIMS (Air Information Management System)** – PostgreSQL
- **AMOS (Aircraft Maintenance Operation System)** – PostgreSQL
- **Aircraft Manufacturer Info Lookup** – Provided as `aircraft-manufaturerinfo-lookup.csv`

## 🎯 User Analytical Requirements

- **R1**: Total flight hours (FH) and flight cycles (FC) per aircraft (and per model), per day/month/year.
- **R2**: Delay rate (DYR), cancellation rate (CNR), and aircraft days out of service (ADOS), per aircraft (and per model), per month/year.

## 🛠️ Tasks Completed

1. **Multidimensional Modeling**  
   - Designed a star schema to fulfill analytical requirements.
   - Refer to `Lab_3_UML.png`.

2. **Data Warehouse Schema Implementation**  
   - Implemented in SQL using ROLAP.
   - See `tables_dw/`.

3. **ETL Process Development**  
   - Executed within `lab_3.ipynb`.
   - Includes:
     - Data extraction from PostgreSQL and CSV
     - Cleaning (removing nulls, duplicates, etc.)
     - Data integration and calculation of required metrics
     - Data loading into the DW

4. **OLAP Queries**  
   - Located in `rolap_queries/`.

5. **ROLAP SQL Queries**  
   - SQL translations of OLAP queries for use on the DW schema.

## ▶️ How to Run

1. Ensure PostgreSQL databases (AIMS and AMOS) are accessible.
2. Open and run the `lab_3.ipynb` notebook in a Jupyter environment.
3. All necessary data transformations, schema creation, and query executions are embedded in the notebook.
4. The CSV file must be in the root directory as named.

## 👥 Group Members

- Alejandro Delgado
- Pablo Fernandez
