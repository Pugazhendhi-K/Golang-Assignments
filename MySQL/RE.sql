use Students;

select * from stu_det;
select * from stu_det where client_name like '%a%'; 
select * from stu_det where client_name like 'S%'; 
select * from stu_det where client_name like '%m';

select * from stu_marks where marks like 'P%';
select * from stu_marks where marks like '%F';
