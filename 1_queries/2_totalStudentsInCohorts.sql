SELECT COUNT(*) FROM students
WHERE cohort_id<=3;

/*another way to do it*/
SELECT count(id)
FROM students 
WHERE cohort_id IN (1,2,3);