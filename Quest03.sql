CREATE VIEW civil_eng_students AS
SELECT s.name AS aluno, COUNT(t.course_id) AS quantidade_cursos
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.name;



