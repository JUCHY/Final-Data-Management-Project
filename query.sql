---------------------------------
--- Compare Financial Performance between Uk and US
---LI is low income, RI is regular income (not low income individuals)
-------------------------------------
 SELECT * FROM sat_benchmark NATURAL JOIN a_level_benchmark NATURAL JOIN gcse_benchmark NATURAL JOIN english_bacc WHERE id='RI' or WHERE id='LI';

---------------------------------
--- Create Table that Incorporates all neccessary data relating to ethnicity
---
-------------------------------------

CREATE VIEW full_table AS WITH upd4 AS ( WITH upd3 AS ( WITH upd2 AS ( WITH upd AS ( SELECT a_level_benchmark.id, sat_percent,a_level_percent FROM a_level_benchmark LEFT OUTER JOIN sat_benchmark ON a_level_benchmark.id=sat_benchmark.id ) SELECT upd.*, gcse_percent FROM upd LEFT OUTER JOIN gcse_benchmark ON upd.id = gcse_benchmark.id ) SELECT upd2.*, bacc_percent FROM upd2 LEFT OUTER JOIN english_bacc ON upd2.id = english_bacc.id )  SELECT upd3.*, sub_ethnicity.* FROM upd3 LEFT OUTER JOIN sub_ethnicity ON upd3.id = sub_ethnicity.sub_ethnicid ) SELECT upd4.*, ethnicity.primary_ethnicity FROM upd4 LEFT OUTER JOIN ethnicity ON upd4.ethnicid = ethnicity.ethnicid;

---------------------------------
--- Using View Compare Ethnic performance distributions by looking at the lowest performing group in all three tests
-------------------------------------
SELECT * FROM full_table ORDER BY gcse_percent ASC;
SELECT * FROM full_table ORDER BY sat_percent ASC;
SELECT * FROM full_table ORDER BY bacc_percent ASC;
SELECT * FROM full_table ORDER BY a_level_percent ASC;
---------------------------
-------- Compare performance of prevalent ethnic groups in both areas with the average (in both datas, the score for white students is very close to the overall average so is used as a proxy in this case)
------------------
SELECT * FROM full_table WHERE ethnicid = 'WH' or ethnicid = 'BLK' order by gcse_percent desc;
SELECT * FROM full_table WHERE ethnicid = 'WH' or ethnicid = 'AN' order by gcse_percent desc;