SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
JOIN students 
ON students.id=assignment_submissions.student_id
WHERE students.cohort_id=
(SELECT id FROM cohorts where name='FEB12');

/* another way to write*/
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';