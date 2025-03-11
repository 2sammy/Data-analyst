   SELECT 
    project_company,
    neid_id,
    neid_role,
    hours_rate AS rate_original,
    hours_rate - 5 AS rate_drop
FROM 
    invoices_fact

   SELECT 
    project_company,
    neid_id,
    neid_role,
    hours_rate AS rate_original,
    hours_rate + 5 AS rate_hike
FROM 
    invoices_fact


--multiplication

   SELECT 
    project_company,
    neid_id,
    neid_role,
    hours_rate,
    hours_spent,
    (hours_rate + 5 ) * hours_spent AS project_total
FROM 
    invoices_fact
WHERE
    rate_hike * hours_spent > 1000 AND
    project_total >2000

    --modulus

SELECT
    activity_id,
    hours_spent,
    hours_spent % 8 extra_hours
FROM
    invoices_fact
WHERE
    hours_spent BETWEEN 8 AND 16
ORDER BY 
    hours_spent

