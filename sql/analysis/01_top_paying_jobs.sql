/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely.
- Focus on job postings with specified salries (without nulls).
- Why? Highlight the top-paying opportunities for Data Analysts.
*/

SELECT  
    companies.name AS company_name,
    jobs.job_title,
    jobs.job_schedule_type,
    jobs.salary_year_avg,
    jobs.job_posted_date
FROM job_postings_fact AS jobs
LEFT JOIN company_dim AS companies
    ON jobs.company_id = companies.company_id
WHERE job_location = 'Anywhere'
AND (job_title LIKE '%Data Analyst%' OR job_title_short = 'Data Analyst')
AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;