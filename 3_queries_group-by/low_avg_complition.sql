SELECT students.name as student, avg(assignment_submissions.duration) as avg(assignments.duration) as average_estimated_duration
from students 
JOIN assignment_submissions on student_id = students.id
JOIN assignments on assignments.id = assignment_id
WHERE end_date is NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;  