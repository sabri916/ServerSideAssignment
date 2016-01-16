create database examDB;

create table students (
first_name varchar(32) not null,
last_name varchar(64) not null,
s_password varchar(64) not null,
email varchar(64) primary key,
gender char(1) not null,
date_of_birth date not null,
specialisation varchar(32) not null
);

select * from students;
insert into students values(
'Sabri',
'K',
's',
'sbrkrs@gmail.com',
'M',
'1991-04-10',
'Computer Science'
);

create table exams(
exam_code varchar(16) primary key,
exam_title varchar(64) not null,
exam_description varchar(MAX),
exam_specialisation varchar(32) not null,
e_date date not null,
e_time time not null,
duration int not null
);

select * from exams;


insert into exams values(
'cm0a','blue','oawiejhfpoawehfoajweo','Computer Science','2016-01-27','17:15:00',3
);

create table registered_exam(
email varchar(64) references students(email),
exam_code varchar(16) references exams(exam_code)
);


insert into registered_exam values('sbrkrs@gmail.com','a');
delete from registered_exam where exam_code = 'cm0a';
select * from registered_exam;
select count(*) from registered_exam where email='sbrkrs@gmail.com' and exam_code='cm0a'