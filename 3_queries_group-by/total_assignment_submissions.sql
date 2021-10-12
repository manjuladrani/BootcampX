SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM students join cohorts
on students.cohort_id = cohorts.id
join assignment_submissions on students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY total_submissions desc;
