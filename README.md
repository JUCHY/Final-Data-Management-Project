# Data Management and Analysis Project

## 1. Documentation

### Project Description

__TODO__: Add project description.
To Explore differences in educational performance distributions in the U.S. and U.K, by comparing distributions of GCSE
scores (in the UK) and SAT scores (in the US).

### Data Source or Description of Data 

A_Levels taken from:
![Source](https://www.gov.uk/government/publications/a-level-attainment-by-pupil-characteristics)
GCSE data taken from:
![Revised GCSE Results](https://www.gov.uk/government/statistics/revised-gcse-and-equivalent-results-in-england-2015-to-2016)
SAT data taken from:
![SAT Report](https://reports.collegeboard.org/archive/sat-suite-program-results/2017/detailed-2017-reports)


__TODO__: Document data source or describe data to be generated.

### Field and / or Columns and Their Types

__TODO__: Enumerate fields or columns... specify type and add short description. For example:

* username: `varchar(255)` - name of the web site user
* active: `boolean` - "soft" delete flag (set false to delete)

## 2. Diagram / Sample Documents and Collections

![ER Diagram](er-diagram.jpg)

Ethnicity, Financial Situation, and Language Situation, each have their own code, that connects to an exam_benchmark table for multiple exams.

Ethnicity is filtered through a sub-ethnicity folder to take into consideration the UK has more detailed ethnic designations.

__TODO__: Create your own ER Diagram or show sample documents

A-levels, GCSE, SAT scores have been modified into a csv that contains only the most relevant data.

A_levels :
![Ethnicity](a_levels_data/A_level_attaintment_characteristics_ethnicity.csv)
![Language](a_levels_data/A_level_attaintment_characteristics_language.csv)
![Financial](a_levels_data/A_level_attaintment_characteristics_financial.csv)


GCSE :
![Ethnicity](gcse_data/gcse_20152016_simplified_ethnicity.csv)
![Language](gcse_data/gcse_20152016_simplified_language.csv)
![Financial]((gcse_data/gcse_20152016_simplified_financial.csv)

SAT :
![Ethnicity](a_levels_data/A_level_attaintment_characteristics_ethnicity.csv)
![Language](a_levels_data/A_level_attaintment_characteristics_language.csv)
![Financial](a_levels_data/A_level_attaintment_characteristics_financial.csv)

## 3. Data Import and Collection... or Data Generation

__TODO__: Describe any data cleaning, preprocessing, etc. necessary to import data
No preprocessing neccessary
Run Scripts in this Order
![Create Table Script](create-tables.sql)
![Import Script](import-sql.sql)
![Use Cleanup Script to fix some data](cleanup.sql)
![Populate Table Script](populate.sql)

## 4. Analysis

__TODO__: To gain an understanding of the distribution of test scores between tests in the UK, and the U.S.

[__TODO__: Link to analysis script in repository (you can create any file you like)](name-of-analysis-script)

[Analysis Script](query.sql)

[__TODO__: Link to exact line of required usage of CTE, comprehension, etc.](name-of-analysis-script)

## 5. Research
Seaborn: statistical data visualization, used to visualize queries in a way that they make comparisons easier to understand

* __TODO__: Link to documentation / site of new concept or technology used
* __TODO__: Describe what you'll be using this technology for
* [__TODO__: Link to application of research in repository](name-of-some-file)


