# IDS_706-Data_Engineering_Systems
## Mini-Project 8 : Rewriting a Python Script in Rust

### PURPOSE

This project is for a data engineering course (Mini-Project 8). The purpose of this project is to rewrite an existing Python script used for data processing in the Rust programming language. The main goals of this project are as follows:
1. Code Migration: Rewrite the Python script in Rust, ensuring it performs the same data processing tasks.  
2. Performance Enhancement: Evaluate the improvements in terms of execution speed and resource usage after the migration to Rust.

***

### PROCESS

To achieve the objectives of this project, the following steps are taken:
1. Script Selection: Selected an existing Python script for data processing. This script served as a suitable candidate for migration to Rust. 
2. Rewrite in Rust: Rewrote the selected Python script in Rust while maintaining the same functionality. This step involved translating the Python code into idiomatic Rust code.
3. Testing and Debugging: Tested the Rust script to ensure it produces the expected results. Debugged and fixed any issues that arose during the migration.
4. Benchmarking: Conducted performance benchmarking tests to evaluate the improvements in execution speed and resource usage achieved by the Rust version of the script.
5. Documentation: Documented the entire process, including the code migration and performance benchmarking. Created a performance comparison report in Markdown format (README).

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

