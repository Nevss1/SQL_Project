SELECT 
    COUNT(*), 
    job_title_short,
    AVG(salary_hour_avg)::money AS "Hour $ Average",
    AVG(salary_year_avg)::money AS "Year $ Average"
FROM 
    job_postings_fact
WHERE 
    job_location = 'Anywhere'
GROUP BY job_title_short
ORDER BY "Hour $ Average" DESC

SELECT 
    * 
FROM 
    job_postings_fact 
LIMIT 10