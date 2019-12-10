------------------
-- IMPORTS a_level_attaintment characteristics ethnicity data
------------------
COPY a_level_ethnicity (ethnicity,number_of_pupils, hit_benchmark)
    FROM 'C:\Users\Public\project_data\A_level_attaintment_characteristics_ethnicity.csv'
    (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'UTF-8');

------------------
-- IMPORTS a_level_attaintment characteristics language data
------------------
COPY a_level_language (first_language, number_of_pupils, hit_benchmark)
    FROM 'C:\Users\Public\project_data\A_level_attaintment_characteristics_language.csv'
    (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'UTF-8');

------------------
-- IMPORTS a_level_attaintment characteristics financial data
------------------
COPY a_level_financial (fsm_eligibility, number_of_pupils, hit_benchmark)
    FROM 'C:\Users\Public\project_data\A_level_attaintment_characteristics_financial.csv'
    (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'UTF-8');

------------------
-- IMPORTS SAT ethnicity data with relateed scores
------------------
COPY sat_ethnicity (ethnicity, hit_benchmark_both, hit_benchmark_erw, hit_benchmark_math, hit_benchmark_none)
    FROM 'C:\Users\Public\project_data\sat_20172018_data_simplified_ethnicity.csv'
    (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'UTF-8');

-----------------
-- IMPORTS SAT financial status data with related scores
------------------
COPY sat_financial (fee_waiver, hit_benchmark_both, hit_benchmark_erw, hit_benchmark_math, hit_benchmark_none)
    FROM 'C:\Users\Public\project_data\sat_20172018_data_simplified_financial.csv'
    (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'UTF-8');


------------------
-- IMPORTS SAT language situation data with related scores
------------------
COPY sat_language (language_learned, hit_benchmark_both, hit_benchmark_erw, hit_benchmark_math, hit_benchmark_none)
    FROM 'C:\Users\Public\project_data\sat_20172018_data_simplified_language.csv'
    (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'UTF-8');



------------------
-- IMPORTS gcse language situation data with ethnicity info
------------------
COPY gcse_ethnicity (ethnicity, passed_gcse, passed_bacc)
    FROM 'C:\Users\Public\project_data\gcse_20152016_simplified_ethnicity.csv'
    (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'UTF-8');


------------------
-- IMPORTS gcse benchmark data with language data
------------------
COPY gcse_language (first_language, passed_gcse, passed_bacc)
    FROM 'C:\Users\Public\project_data\gcse_20152016_simplified_language.csv'
    (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'UTF-8');

------------------
-- IMPORTS gcse benchmark data with financial situation
------------------
COPY gcse_financial (fsm_eligibility, passed_gcse, passed_bacc)
    FROM 'C:\Users\Public\project_data\gcse_20152016_simplified_financial.csv'
    (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'UTF-8');

------------------
-- import ethnic code data
--file is located in main folder of repository
------------------
COPY Ethnicity (ethnicid, primary_ethnicity)
    FROM 'C:\Users\Public\project_data\ethnic_code.csv'
    (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'UTF-8');

------------------
-- import ethnic data with ethnic codes
-- file is also located in the main folder of repository
------------------
COPY Sub_Ethnicity (sub_ethnicid, sub_ethnicity, ethnicid)
    FROM 'C:\Users\Public\project_data\sub_ethnic_code.csv'
    (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'UTF-8');

