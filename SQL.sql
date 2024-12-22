SELECT SUBNAME, SUBROOM 
FROM SUBJECTS 
WHERE STATUS = '대면';

SELECT SUBNAME, SUBTIME, STATUS
FROM SUBJECTS
ORDER BY SUBTIME ASC, STATUS DESC;

SELECT dno, COUNT(*) AS PROFESSOR_COUNT
FROM PROFESSOR
GROUP BY dno;

SELECT GRADE,dno
FROM COURSE;

select subname,subtime
from subjects;

select s.sname,c.grade
from student s,course c
where s.sno=c.sno;

select p.pname,s.subname
from professor p,subjects s
where p.pno=s.pno;

SELECT SUBNAME
FROM SUBJECTS
WHERE dno IN (SELECT dno FROM PROFESSOR WHERE dno = 101);

SELECT SUBNAME, SUBTIME
FROM SUBJECTS
WHERE PNO = (SELECT PNO FROM PROFESSOR WHERE PNAME = '김교수');

SELECT SNO, GRADE
FROM COURSE
WHERE credit = (SELECT max(credit) FROM COURSE);
