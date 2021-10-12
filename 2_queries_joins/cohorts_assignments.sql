SELECT sum(assignment_submissions.duration) as totalduration 
FROM assignment_submissions
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12'