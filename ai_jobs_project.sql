CREATE DATABASE ai_jobs_project;
USE ai_jobs_project;
CREATE TABLE ai_jobs (
    job_id VARCHAR(20),
    job_title VARCHAR(255),
    salary_usd INT,
    salary_currency VARCHAR(10),
    experience_level VARCHAR(50),
    employment_type VARCHAR(50),
    company_location VARCHAR(100),
    company_size VARCHAR(50),
    employee_residence VARCHAR(100),
    remote_ratio INT,
    required_skills TEXT,
    education_required VARCHAR(100),
    years_experience INT,
    industry VARCHAR(100),
    posting_date DATE,
    application_deadline DATE,
    job_description_length INT,
    benefits_score FLOAT,
    company_name VARCHAR(255)
);
SHOW TABLES;
DESCRIBE ai_jobs;
SELECT COUNT(*) FROM ai_jobs;

SELECT * FROM ai_jobs LIMIT 10;

SELECT COUNT(*) AS total_jobs FROM ai_jobs;

SELECT AVG(salary_usd) AS avg_salary FROM ai_jobs;

SELECT job_title, salary_usd
FROM ai_jobs
ORDER BY salary_usd DESC
LIMIT 10;

SELECT experience_level, COUNT(*) AS total_jobs
FROM ai_jobs
GROUP BY experience_level;

SELECT remote_ratio, COUNT(*) AS total_jobs
FROM ai_jobs
GROUP BY remote_ratio;

SELECT industry, COUNT(*) AS total_jobs
FROM ai_jobs
GROUP BY industry
ORDER BY total_jobs DESC;

SELECT experience_level, AVG(salary_usd) AS avg_salary
FROM ai_jobs
GROUP BY experience_level;

SELECT industry, AVG(salary_usd) AS avg_salary
FROM ai_jobs
GROUP BY industry
ORDER BY avg_salary DESC;

SELECT company_size, AVG(salary_usd) AS avg_salary
FROM ai_jobs
GROUP BY company_size;

SELECT job_description_length, AVG(salary_usd)
FROM ai_jobs
GROUP BY job_description_length
ORDER BY job_description_length;

