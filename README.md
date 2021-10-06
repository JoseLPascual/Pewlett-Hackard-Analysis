# Pewlett-Hackard-Analysis

## Project Overview
The manager has tasked me with the assignment of determining the number of retiring employees on a per-title basis, and to identify eligible employees for the mentorship program geared at having employees close to retirement status mentor younger hires.

## Resources
- Data sources: schema.sql, departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
- Software: pgAdmin 4 5.2 (PostgreSQL 12.7)

## Results
Through the analysis I conducted with SQL, I was able to find that: 
- A total of 90,398 employees are slated to retire within the next three years.
- The job position slated to yield the largest number of retirees during that time is Senior Engineer, projected to shed 29,414 employees to retirement.  Just behind that is the job position of Senior Staff, expected to lose 28,254 employees to retirement within said time span.
- Taken together, projected retirements of employees from these two job positions constitute almost two-thirds of the overall number.
- 1,549 employees were flagged for mentorship program eligibility.

## Challenge Summary
From the results generated, I was able to determine the following:
In the next three years, a total of 90,398 employees will be eligible for retirement, and almost two-thirds of them will be from just two job positions, Senior Engineer with 29,414 employees soon to retire, and Senior Staff with 28,254 such employees, totalling 57,668 total employees that need to be replaced.  As it concerns which number of soon-to-retire employees are eligible for participation in the mentorship program to mentor the next generation of employees, I found that there were only 1,549 employees who would qualify under the current criteria, at a rate of 1 mentoring employee for every 58 or so new employees.  This "silver tsunami" spoken of is therefore going to prove crippling for us from a staffing standpoint, and compel us to look into different strategies to maintain current staffing levels save for downsizing, such as headhunting or acquisitions of rival companies.
