SELECT teachers.name as teachers, cohorts.name as cohort
from teachers
JOIN assistance_requests on teachers.id = teacher_id
JOIN students on student_id = students.id
JOIN cohorts on cohort_id = cohorts.id

where cohorts.name = 'JUL02'
GROUP by teachers.name, cohorts.name
ORDER by teachers