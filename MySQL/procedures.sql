use Students;
create table author (author_id integer primary key, 
                            authorName varchar(30), 
                            email varchar (25), gender varchar (6));

create table book (BookId integer not null unique, 
                        ISBN integer primary key, 
                       book_name varchar (30) not null, 
                        author integer, ed_num integer, 
                      price integer, pages integer, 
         foreign key (author) references author (author_id) on delete cascade);
         
insert into author values 
              (1, "Chanakya", "chanakya@gmail.com", "Male");
insert into author values
              (2, "Tagore", "Tagore@gmail.com", "Male");
insert into author values
              (2, "Abdul Kalam", "APJ@gmail.com", "Male");
insert into book values
              (1, 001, "Social Science", 1, 1, 650, 396);
insert into book values
              (2, 002, "Civics law", 1, 1, 650, 396);
insert into book values
              (3, 003, "Literature Grammar", 2, 1, 799, 500);
insert into book values
              (4, 004, "Aerodynamics", 3, 1, 499, 330);

delimiter //
create procedure display_book() 
                      begin 
                     select *from book; 
                      end //
call display_book(); //

delimiter //
create procedure update_price (IN temp_ISBN varchar(10), IN new_price integer)
                begin
                update book set price=new_price where ISBN=temp_ISBN;
                end; //
call update_price(001, 600); //

delimiter //
create procedure disp_max(OUT highestprice integer)
                  begin
                  select max(price) into highestprice from book;
                  end; //
call disp_max(@M); //
select @M; 

delimiter //
create procedure disp_gender(INOUT mfgender integer, IN emp_gender varchar(6))  
                      begin 
                      select COUNT(gender) 
                         INTO mfgender FROM author where gender = emp_gender;   
                      end; //
delimiter ;
call disp_gender(@M, "Male");
select @M;
call disp_gender(@F, "Female");
select @F; 
