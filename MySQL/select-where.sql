//where
SELECT * FROM stu_det
WHERE name="Suriya";

//where with AND
SELECT * FROM stu_det
WHERE roll_no>2 AND Fees>=30000;

//where with OR
SELECT * FROM stu_det
WHERE Fees<=25000 OR Fees>=60000;

//where with NOT
SELECT * FROM stu_det
WHERE NOT name='Vijay';

//where with combined AND OR NOT
SELECT * FROM stu_det
WHERE roll_no>=2 AND (Fees>=25000 OR Fees<=70000);

SELECT * FROM stu_det
WHERE NOT name='Vijay' AND NOT Fees>=50000;
