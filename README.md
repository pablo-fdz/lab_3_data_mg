# lab_3_data_mg

*Authors: Alejandro Delgado and Pablo Fernández*. 

Indication of where to locate the tasks:
- The main document of the folder is the Jupyter Notebook `lab_3.ipynb`, where we 1) show the UML of the data warehouse; 2) create the database (the data warehouse) through the SQL scripts saved in the folder `tables_dw` and connect to it; 3) implement the ETL process, where we use as data sources the databases `AIMS`, `AMOS` and the lookup table `aircraft-manufaturerinfo-lookup.csv`; 4) implement the SQL queries (ROLAP) on the data warehouse through the SQL scripts saved in the folder `rolap_queries`.
- The folder `tables_dw` contains 5 SQL scripts of `CREATE TABLE` statements, where each scripts creates one relation.
- The folder `rolap_queries` contains 2 SQL scripts - the queries that implement the user requirements R1 and R2.
- The image `Lab_3_UML.png` is the UML of our data warehouse, where we have denoted with "F" the fact tables and "D" the dimension tables.