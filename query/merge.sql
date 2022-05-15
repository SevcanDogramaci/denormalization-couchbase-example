MERGE INTO sample._default.`delivery_option` AS dop USING (
       SELECT 
              mdop.id, 
              (SELECT RAW OBJECT v.`language` : v.translation FOR v IN (mdopt) END)[0] AS translations
       FROM sample.migration.`delivery_option` AS mdop
       LEFT NEST sample.migration.`delivery_option_translation` mdopt on mdopt.delivery_option_id = mdop.id
) 
AS temp ON dop.id = temp.id 
WHEN MATCHED THEN 
    UPDATE SET dop.translations = temp.translations
WHEN NOT MATCHED THEN
    INSERT (KEY UUID(), VALUE temp)