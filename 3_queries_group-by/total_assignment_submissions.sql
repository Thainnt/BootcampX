SELECT cohorts.name AS cohort, COUNT(assignment_submissions.id) AS total_submissions
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohort
ORDER BY total_submissions DESC;


cohorts (id, name, start_date, end_date)
students (id, name, email, phone, github, start_date, end_date, cohort_id)

assignments (id, name, content, duration, day, chapter)
VALUES (22, 'Accusamus ut', 'Qui similique est eos. Voluptatem aut molestiae perspiciatis dolorem qui adipisci harum veniam. Sunt iure voluptatibus animi. Est quia doloribus aliquam et voluptatem saepe dicta ratione.', 30, 3, 2);

assignment_submissions (id, assignment_id, student_id, submission_date, duration)