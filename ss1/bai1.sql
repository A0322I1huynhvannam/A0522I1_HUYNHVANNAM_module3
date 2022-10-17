create DATABASE students;
use students;

create table students(
	id int primary Key auto_increment,
    `name` varchar(50)
);

create table Teacher(
	id int primary Key auto_increment,
    `name` varchar(50),
    age int,
    country varchar(50)
);

insert into students(`name`)
value ("bao"), ("tin");

insert into Teacher(`name`,age,country)
value ("nam",30,"VN");

select * from students
