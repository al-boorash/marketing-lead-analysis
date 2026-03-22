-- Calculate Lead Conversion Rate by Source
SELECT 
    lead_source, 
    COUNT(id) AS total_leads,
    SUM(converted) AS total_conversions,
    (SUM(converted) * 100.0 / COUNT(id)) AS conversion_rate
FROM leads_data
GROUP BY lead_source
ORDER BY conversion_rate DESC;
