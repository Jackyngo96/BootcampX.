SELECT cohorts.name as cohorts, sum(completed_at - started_at) total_duration 
FROM assistance_requests 
JOIN students ON students.id = student_id 
JOIN cohorts ON cohorts.id = cohort_id 
GROUP BY cohorts 
ORDER BY total_duration;

