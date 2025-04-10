# 🛫 Lab 3: Data Warehousing Project
 
 *Authors: Alejandro Delgado and Pablo Fernández*. 
 ## 📌 Overview
 
 Indication of where to locate the tasks:
 - The main document of the folder is the Jupyter Notebook `lab_3.ipynb`, where we 1) show the UML of the data warehouse; 2) create the database (the data warehouse) through the SQL scripts saved in the folder `tables_dw` and connect to it; 3) implement the ETL process, where we use as data sources the databases `AIMS`, `AMOS` and the lookup table `aircraft-manufaturerinfo-lookup.csv`; 4) implement the SQL queries (ROLAP) on the data warehouse through the SQL scripts saved in the folder `rolap_queries`.
 - The folder `tables_dw` contains 5 SQL scripts of `CREATE TABLE` statements, where each scripts creates one relation.
 - The folder `rolap_queries` contains 2 SQL scripts - the queries that implement the user requirements R1 and R2.
 - The image `Lab_3_UML.png` is the UML of our data warehouse, where we have denoted with "F" the fact tables and "D" the dimension tables.
 This project implements a Data Warehouse solution using a multidimensional model and an ETL process, based on specific analytical requirements. It integrates multiple data sources, prepares the data, and enables analysis through OLAP and ROLAP queries.
 
 ## 📁 Repository Structure
 
```bash
├── rolap_queries/ # OLAP queries and notebook for analysis
├── tables_dw/ # SQL files for DW schema (ROLAP model)
├── Lab_3_UML.png # UML diagram(s) of the star schema(s)
├── lab_3.ipynb # Main Jupyter Notebook for ETL and queries
├── aircraft-manufaturerinfo-lookup.csv # External CSV with aircraft manufacturer data
├── README.md # Project documentation
├── LICENSE # License information
└── .gitignore # Git ignored files ``` 
 ```
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
