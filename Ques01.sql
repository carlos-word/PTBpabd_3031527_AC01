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