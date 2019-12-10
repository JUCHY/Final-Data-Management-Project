UPDATE sat_ethnicity
  SET ethnicity = CASE
    WHEN  ethnicity like 'Black%' THEN 'Black'
    WHEN ethnicity like 'No Response%' THEN 'Unclassified'
    WHEN ethnicity like 'Two%' THEN 'Mixed'
    END WHERE ethnicity LIKE 'Black%' OR ethnicity LIKE 'No Response%' or ethnicity LIKE 'Two%';


UPDATE sat_ethnicity
  SET ethnicity = upper(ethnicity);

UPDATE gcse_ethnicity
  SET ethnicity = upper(ethnicity);


UPDATE gcse_ethnicity
  SET ethnicity = CASE
    WHEN  ethnicity like 'IRISH%' THEN 'WHITE IRISH'
    WHEN ethnicity like 'GYPSY%' THEN 'WHITE GYPSY/ROMA'
    WHEN ethnicity like 'TRAVELLER%' THEN 'WHITE IRISH TRAVELLER'
    END WHERE ethnicity LIKE 'IRISH%' OR ethnicity LIKE 'GYPSY%' or ethnicity LIKE 'TRAVELLER%';




UPDATE a_level_ethnicity
  SET ethnicity = upper(ethnicity);



UPDATE sub_ethnicity
  SET sub_ethnicity = upper(sub_ethnicity);