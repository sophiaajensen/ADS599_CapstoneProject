# Identifying Key Predictors of Voluntary Employee Turnover: Using a Predictive Model Approach

## Project Overview

**Capstone Course:** M.S. Applied Data Science – University of San Diego  
**Authors:** Sophia Jensen & Duy Nguyen  
**Date:** August 2025  

This project investigates the drivers behind voluntary employee turnover in federal agencies using machine learning and structured survey data. By identifying key predictors of attrition, the goal is to support proactive HR strategies and improve organizational retention efforts.

---

## Business Challenge

Employee turnover leads to productivity loss, increased hiring costs, and organizational instability. This project aims to build predictive models to classify which employees are at risk of leaving based on responses to the FEVS. By identifying key features tied to attrition, HR teams can implement targeted interventions.

---

## Data Source

- **Dataset:** Federal Employee Viewpoint Survey (FEVS)  
- **Years Covered:** 2018–2024  
- **Provider:** U.S. Office of Personnel Management (OPM)  
- **Description:** The FEVS is an annual survey capturing federal employees’ perceptions of their work environment, leadership, job satisfaction, and engagement.  
- **Format:** Structured CSV files, aggregated by department, agency, and demographic groups

---

## Methodology

- **Exploratory Data Analysis (EDA):**  
  - Trend analysis of employee turnover across survey years (2018–2024)  
  - Distribution and frequency analysis of the target variable *Intent to Leave*  
  - Correlation heatmaps to identify relationships between survey questions
    
- **Data Preprocessing:**  
  - Handling missing values and survey inconsistencies  
  - Feature scaling and one-hot encoding  
  - Consolidating multi-year data into a single structured dataset

- **Modeling Approaches:**  
  - Logistic Regression  
  - Decision Tree  
  - XGBoost  

- **Evaluation Metrics:**  
  - Accuracy, Precision, Recall, F1-score  
  - ROC-AUC  
  - Confusion Matrix

---

## Results

- **Top Predictive Factors:**  
  - Gender
- **Key Survey Questions:**  
  - *“Employees are recognized for providing high-quality products and services.”*  
  - *“I know what is expected of me on the job.”*  
  - *“I know how my work relates to the agency's goals.”*

- **Best Model:**  
  - XGBoost (due to balance of performance and interpretability)

---

## Tools & Technologies

- **Languages:** Python, SQL  
- **Libraries:** pandas, NumPy, scikit-learn, XGBoost, Matplotlib, Seaborn  
- **Environment:** Jupyter Notebook  
- **Database:** SQL (used for storing and querying large datasets efficiently)  
- **Version Control:** Git & GitHub  

---

## Repository Structure

- code library/ -- Jupyter notebooks for EDA, preprocessing, and modeling
- data/ -- Raw survey CSV files and processed datasets
- image/ -- Visualizations, charts, figures
- other materials/ -- Other materials, documentation, reports, presentations
- .gitattributes/ -- Git attributes config file
- README.md -- Project overview and documentation 
