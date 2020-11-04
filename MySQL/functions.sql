use Students;

--Begining of the Function

DELIMITER $$

CREATE FUNCTION StudentPrize(
	marks DECIMAL(10,2)
) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE studentprize VARCHAR(20);

    IF marks > 90 THEN
		SET studentprize = 'GOLD';
    ELSEIF (marks >= 70 AND 
			marks <= 90) THEN
        SET studentprize = 'SILVER';
    ELSEIF marks < 70 THEN
        SET studentprize = 'BRONZE';
    END IF;
	RETURN (studentprize);
END$$
DELIMITER ;

--Function Call

SELECT 
    name, 
    studentprize(marks)
FROM
    stu_det
ORDER BY 
    name;
