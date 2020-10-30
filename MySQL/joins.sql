use Students;


create table stu_marks (
roll_no int not null,
marks int not null,
result varchar(2),
primary key(roll_no));

insert into stu_marks (roll_no, marks, result) values (1, 98, 'P');
insert into stu_marks (roll_no, marks, result) values (2, 46, 'F');
insert into stu_marks (roll_no, marks,  result) values (3, 52, 'P');
insert into stu_marks (roll_no, marks, result) values (4, 76, 'P');
insert into stu_marks (roll_no, marks, result) values (5, 23, 'F');

//INNER JOIN
SELECT stu_det.name, stu_marks.result
FROM stu_det
INNER JOIN stu_marks ON stu_det.roll_no = stu_marks.roll_no;

//RIGHT JOIN
SELECT stu_marks.roll_no, stu_det.name, stu_det.date_of_joining
FROM stu_marks
RIGHT JOIN stu_det ON stu_det.roll_no = stu_marks.roll_no
ORDER BY stu_det.roll_no;

//LEFT JOIN
SELECT stu_det.name, stu_marks.roll_no
FROM stu_det
LEFT JOIN stu_marks ON stu_det.roll_no = stu_marks.roll_no
ORDER BY stu_det.name;

//FULL JOIN
SELECT stu_det.name, stu_marks.roll_no
FROM stu_det
FULL OUTER JOIN stu_marks ON stu_det.roll_no=stu_marks.roll_no
ORDER BY stu_det.name;

//SELF JOIN
SELECT stu_det.name AS Name, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE stu_det.roll_no = stu_marks.roll_no
AND stu_det.name = stu_marks.name
ORDER BY stu_det.name;
