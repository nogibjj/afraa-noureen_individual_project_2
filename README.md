# IDS_706-Data_Engineering_Systems
## Individual Project 2 : Rust CLI Binary with SQLite

### PURPOSE

This project is for a data engineering course (Individual Project 2). It combines Rust and SQLite for a CLI application featuring CRUD operations. It leverages Rust's strengths, GitHub Copilot for efficiency, GitHub Actions for automation, and includes a video demo.

Dataset: [Baskin Robbins Ice-Cream](https://raw.githubusercontent.com/prasertcbs/basic-dataset/master/baskin_icecream.csv)

***

### PROCESS

This project's primary objective is to perform ETL (Extract, Transform, Load) operations and enable efficient database querying using Rust. Here's a summary of the key functionalities:

Data Extraction (E): This involves fetching a dataset from a specified URL in CSV format.  
Data Transformation (T): The data undergoes various transformations such as cleaning, filtering, and enriching to prepare it for analysis.  
Data Loading (L): Transformed data is loaded into an SQLite database table. The process includes create and update operations.  
Database Querying (Q): The application accepts and executes SQL queries, enabling CRUD (Create, Read, Update, Delete) operations on the SQLite database for data analysis and insights retrieval.  

***

### STEPS

Data Extraction: The `extract` function downloads data from a specified URL and saves it locally.

Data Transformation: The `transform_load` function reads a CSV dataset, performs necessary table operations, and inserts records into an SQLite database table named BaskinRobbinsDB with specific columns.

Database Querying: The `query` function empowers users to execute SELECT, INSERT, UPDATE, and DELETE operations on the database. It logs these queries in a Markdown file named query_log.md.

Logging: The `log_query` function appends SQL queries to a log file, making it easier to track and analyze executed queries.

***

### Commands to Run the Repo

To run the project, you can use the Makefile and follow these commands:
1. ```
   # To install the required the python packages
   make install
   ```
2. ```
   # To check code style
   make lint
   ```
3. ```
   # To run tests
   make test
   ```
4. ```
   # To format the code
   make format
   ```
5. ```
   # To extract data
   make extract
   ```
6. ```
   # To tranform data
   make transform_load
   ```
7. ```
   # To query data
   make query
   ```

