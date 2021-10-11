SELECT id, name, cohort_id
from students
WHERE email NOT LIKE '%gmail.com'
ORDER BY name