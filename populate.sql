------------------------------
-- populate a_level benchmark with ethnicity info
------------------------------

WITH upd as (SELECT sub_ethnicid, ethnicity, hit_benchmark FROM a_level_ethnicity INNER JOIN Sub_ethnicity ON a_level_ethnicity.ethnicity = Sub_ethnicity.sub_ethnicity) INSERT into a_level_benchmark SELECT sub_ethnicid, hit_benchmark FROM upd;


------------------------------
-- populate sat_benchmark with ethnicity info
------------------------------
WITH upd as (SELECT * FROM sat_ethnicity INNER JOIN Sub_ethnicity ON sat_ethnicity.ethnicity = Sub_ethnicity.sub_ethnicity) INSERT into sat_benchmark SELECT sub_ethnicid, hit_benchmark_both FROM upd;

------------------------------
-- populate gcse_bacc with ethnicity info
------------------------------
WITH upd as (SELECT sub_ethnicid, ethnicity, passed_gcse FROM gcse_ethnicity INNER JOIN Sub_ethnicity ON gcse_ethnicity.ethnicity = Sub_ethnicity.sub_ethnicity) INSERT into english_bacc SELECT sub_ethnicid, passed_gcse FROM upd;



------------------------------
-- populate gcse_benchmark with ethnicity info
------------------------------

WITH upd as (SELECT sub_ethnicid, ethnicity, passed_bacc FROM gcse_ethnicity INNER JOIN Sub_ethnicity ON gcse_ethnicity.ethnicity = Sub_ethnicity.sub_ethnicity) INSERT into gcse_benchmark SELECT sub_ethnicid, passed_bacc FROM upd;

------------------------------
-- populate a_level benchmark with financial stats
------------------------------

WITH upd as (SELECT  CASE
    WHEN  fsm_eligibility like 'Eligible%' THEN 'LI'
    WHEN fsm_eligibility like 'Not Eligible%' THEN 'RI'
    ELSE null END as id, hit_benchmark  from a_level_financial) INSERT INTO a_level_benchmark  SELECT * FROM upd WHERE id IS NOT NULL;

------------------------------
-- populate gsce benchmark with financial stats
------------------------------

WITH upd as (SELECT  CASE
    WHEN  fsm_eligibility like 'FSM%' THEN 'LI'
    ELSE 'RI' END as id, passed_gcse from gcse_financial) INSERT INTO gcse_benchmark  SELECT * FROM upd;

------------------------------
-- populate english_bacc with financial stats
------------------------------

WITH upd as (SELECT  CASE
    WHEN  fsm_eligibility like 'FSM%' THEN 'LI'
    ELSE 'RI' END as id, passed_bacc from gcse_financial) INSERT INTO english_bacc  SELECT * FROM upd;

------------------------------
-- populate sat_benchmark with financial stats
------------------------------

WITH upd as (SELECT  CASE
    WHEN  fee_waiver like 'Used%' THEN 'LI'
    ELSE 'RI' END as id, hit_benchmark_both from sat_financial) INSERT INTO sat_benchmark SELECT * FROM upd;



