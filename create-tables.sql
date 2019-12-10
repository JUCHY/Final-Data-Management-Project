DROP TABLE IF EXISTS Ethnicity;
CREATE table Ethnicity
(
        
    ethnicid varchar(255) primary key,
    primary_ethnicity varchar(255)


);

DROP TABLE IF EXISTS Sub_Ethnicity;
CREATE table Sub_Ethnicity
(
    sub_ethnicid varchar(255) primary key,
    Sub_Ethnicity varchar(255),
    ethnicid varchar(255)

);

DROP TABLE IF EXISTS Language;
CREATE table Language
(
    langid varchar(255) primary key,
    language_situation varchar(255)

);

DROP TABLE IF EXISTS Financial;
CREATE table Financial
(
    financeid varchar(255) primary key,
    finance_situation varchar(255)

);

DROP TABLE IF EXISTS sat_benchmark;
CREATE table sat_benchmark
(
    id varchar(255) primary key,
    sat_percent float

);

DROP TABLE IF EXISTS gcse_benchmark;
CREATE table gcse_benchmark
(
    id varchar(255) primary key,
    gcse_percent float

);

DROP TABLE IF EXISTS english_bacc;
CREATE table english_bacc
(
    id varchar(255) primary key,
    bacc_percent float

);

DROP TABLE IF EXISTS a_level_benchmark;
CREATE table a_level_benchmark
(
    id varchar(255) primary key,
    a_level_percent float

);



DROP TABLE IF EXISTS a_level_ethnicity;
CREATE table a_level_ethnicity
(
        
    ethnicity varchar(255) primary key,
    number_of_pupils integer,
    hit_benchmark float

);

DROP TABLE IF EXISTS a_level_language;
CREATE table a_level_language
(
        
    first_language varchar(255) primary key,
    number_of_pupils integer,
    hit_benchmark float

);


DROP TABLE IF EXISTS a_level_financial;
CREATE table a_level_financial
(
        
    fsm_eligibility varchar(255) primary key,
    number_of_pupils integer,
    hit_benchmark float


);


DROP TABLE IF EXISTS sat_ethnicity;
CREATE table sat_ethnicity
(
        
    ethnicity varchar(255) primary key,
    hit_benchmark_both float,
    hit_benchmark_erw float,
    hit_benchmark_math float,
    hit_benchmark_none float



);

DROP TABLE IF EXISTS sat_language;
CREATE table sat_language
(
        
    language_learned varchar(255) primary key,
    hit_benchmark_both float,
    hit_benchmark_erw float,
    hit_benchmark_math float,
    hit_benchmark_none float



);


DROP TABLE IF EXISTS sat_financial;
CREATE table sat_financial
(
        
    fee_waiver varchar(255) primary key,
    hit_benchmark_both float,
    hit_benchmark_erw float,
    hit_benchmark_math float,
    hit_benchmark_none float



);

DROP TABLE IF EXISTS gcse_ethnicity;
CREATE table gcse_ethnicity
(
        
    ethnicity varchar(255) primary key,
    passed_gcse float,
    passed_bacc float


);

DROP TABLE IF EXISTS gcse_language;
CREATE table gcse_language
(
        
    first_language varchar(255) primary key,
    passed_gcse float,
    passed_bacc float

);

DROP TABLE IF EXISTS gcse_financial;
CREATE table gcse_financial
(
        
    fsm_eligibility varchar(255) primary key,
    passed_gcse float,
    passed_bacc float


);

