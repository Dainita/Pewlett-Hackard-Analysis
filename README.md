# Pewlett-Hackard-Analysis

## Overview
Pewlett-Hackard, large company, is expecting a silver-tsunami. The company has been in business for a long time and many current employees are reaching retirement age. To proactively prepare, a mentorship program has been developed to train staff for senior postions that will need to be filled. An analysis of the number of retirmement eligible employees and the number of employees eligible to participate in the mentorship program has also been prepared to deterimine next steps. 

## Queries
Queries were created from the employees, titles and department tables of the Pewlett-Hackard company to retrieve the data required to perform the analysis. First, the employee table and titles table were joined to retrieve the employees eligible for retirement by birthdate and department. Then a query was created using DISTINCT ON() that selected only the most recent job title. Because this data included all employees of Pewlett-Hackard, an additional query was created to remove employees that were no longer employed by filtering on the to_date column. Finally, a retiring titles table was created using GROUP BY() to count the number of employees eligible for retirment within each title. 

Once the number of retiring employees was identified by title, we needed to determine the number of those employees that were quailified for the mentorship program. The query created for this data was retrieved from the employees and department tables of the Pewlett-Hackard Company. After the tables were joined, the data was filtered on the to_date and birth_date columns to retrieve current employees born between January 1, 1965 and December 12, 1965. This table was ordered by emp_no and exported. 

## Results
Based on the review of the queries, Pewlett-Hackard is potentially facing a staffing struggle generated by the expected silver-tsunami. Of the 72,458 employees eligible for retirement, only 1,549 are available for the mentorship program. If left unaddressed, the company's level of service may be impacted causing reputation damage.

  - Of Pewlett-Hackard's 300,024 employees, 72,458 are eligible from retirement. 
  - 25,916 of these employees are Senior Engineers and 24,926 are Senior Staff. 
  - Of the 72,458 employees eligible for retirment, only 1,549 are eligible for the mentorship program
  - Only 178 Senior Engineer and 553 Senior Staff employess are eligible for the mentorship program

![Retirement Eligibility](https://github.com/Dainita/Pewlett-Hackard-Analysis/Resources/retirement_eligibility.png)
![Mentorship Eligibility](https://github.com/Dainita/Pewlett-Hackard-Analysis/Resources/mentorship_eligibility.png)  

## Summary
Findings indicate that the silver-tsunami will generate over 72,000 vacant postions for Pewlett-Hackard. With only 1,549 available employees for the mentorship program, Pewlett-Hackard should consider expanding the eligibility parameters for this program. Over 50,000 retirement eligible employees are currently in Senior positions and potentially additional assets for the mentorship program. Also, additional lower level employees should be hired to backfill the positions vacated by those promoted to senior level positions that are vacated by the retiring employees. Preplanning for the regeneration of the workforce will help to ensure service continuity.
