CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

INSERT INTO Students (student_id, student_name)
VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Charlie');


CREATE TABLE Grades (
    student_id INT,
    subject VARCHAR(50),
    grade INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

INSERT INTO Grades (student_id, subject, grade)
VALUES
    (1, 'Math', 85),
    (1, 'Science', 90),
    (2, 'Math', 75),
    (2, 'Science', 80),
    (3, 'Math', 95),
    (3, 'Science', 85);
    
    
    
    
    
    
    
    
    
    
    
    
    
    joins
    
    inner join
    right outer  join
    left outer join
    full join
    
    
    set operations
    union, intersesction, minus/except,union all
union, a,b a=1,2,3,   b = 3,4,5
a union b, 1,2,3,4,5    a union all b 1,2,3,3,4,5




select students.student_name, students.student_id,grades.subject,grades.grade
from students inner join grades 
on students.student_id=grades.student_id;

select students.student_name, students.student_id,grades.subject,grades.grade
from students left outer join grades 
on students.student_id=grades.student_id;

select students.student_name, students.student_id,grades.subject,grades.grade
from students right outer join grades 
on students.student_id=grades.student_id;




CREATE TABLE Students2 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

INSERT INTO Students2 (student_id, student_name)
VALUES
    (1, 'Alice'),
    (3, 'Charlie'),
    (4, 'David');


select students.student_name, students.student_id,students2.student_name, students2.student_id
from students inner join students2 
on students.student_id=students2.student_id;

select students.student_name, students.student_id,students2.student_name, students2.student_id
from students right outer join students2 
on students.student_id=students2.student_id
union 
select students.student_name, students.student_id,students2.student_name, students2.student_id
from students left outer join students2 
on students.student_id=students2.student_id;


select student_id,student_name
from students
union all
select student_id,student_name
from students2;







