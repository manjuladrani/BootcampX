SELECT cohorts.name as name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER by average_assistance_time 

