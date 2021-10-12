SELECT count(assistance_requests.*) as total_assistances, students.name AS name
FROM assistance_requests
JOIN students on assistance_requests.student_id = students.id  
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;