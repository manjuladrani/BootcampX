SELECT id, name, cohort_id
from students
WHERE email is NULL OR phone is NULL
ORDER BY name