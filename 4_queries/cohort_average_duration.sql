SELECT avg(total_duration) as average_total_duration
from (
    SELECT sum(completed_at - started_at) as total_duration
    from assistance_requests
    JOIN students ON students.id = student_id
    JOIN cohorts ON cohorts.id = cohort_id
    GROUP by cohorts.name
    ORDER by total_duration 
) as total_duration

