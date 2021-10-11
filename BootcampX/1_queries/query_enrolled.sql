SELECT id, name, cohort_id
from students
WHERE end_date is NULL
ORDER BY cohort_id