--Questão 01. Crie uma relação a partir da união das tabelas student e takes.
SELECT 
    student.ID, 
    student.name, 
    student.dept_name, 
    student.tot_cred, 
    takes.course_id, 
    takes.sec_id, 
    takes.semester, 
    takes.year, 
    takes.grade
FROM student
JOIN takes ON student.ID = takes.ID;

--Questão 2. Contar a quantidade de cursos realizados pelos alunos do departamento de Civil Eng. Ordenar de maneira descendente a quantidade de cursos associada aos alunos.
SELECT s.name AS aluno, COUNT(t.course_id) AS quantidade_cursos
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.name
ORDER BY quantidade_cursos DESC;

--Questão 3. Criar uma view chamada 'civil_eng_students' a partir da relação construída na Questão 2.
CREATE VIEW civil_eng_students AS
SELECT s.name AS aluno, COUNT(t.course_id) AS quantidade_cursos
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.name;



