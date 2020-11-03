USE students;
CREATE TABLE contacts
( contact_id INT(11) NOT NULL AUTO_INCREMENT,
  last_name VARCHAR(30) NOT NULL,
  first_name VARCHAR(25),
  birthday DATE,
  created_date DATE,
  created_by VARCHAR(30),
  CONSTRAINT contacts_pk PRIMARY KEY (contact_id)
);

DELIMITER //

CREATE TRIGGER contacts_before_update
BEFORE UPDATE
   ON contacts FOR EACH ROW

BEGIN

   DECLARE vUser varchar(50);

   -- Find username of person performing the INSERT into table
   SELECT USER() INTO vUser;

   -- Insert record into audit table
   INSERT INTO contacts_audit
   ( contact_id,
     updated_date,
     updated_by)
   VALUES
   ( NEW.contact_id,
     SYSDATE(),
     vUser );

END; //

DELIMITER ;
