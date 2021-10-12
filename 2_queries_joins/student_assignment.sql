SELECT sum(assignment_submissions.duration) as totalduration 
FROM assignment_submissions
join students on students.id = student_id
WHERE students.name = 'Ibrahim Schimmel' 