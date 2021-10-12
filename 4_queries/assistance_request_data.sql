SELECT teachers.name as teacher, students.name as student, assignment_id as assignment, (assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM assistance_requests
JOIN teachers on teacher_id = teachers.id
JOIN students on student_id = students.id
JOIN assignments on assignment_id = assignments.id
ORDER by duration;