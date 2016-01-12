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

select * from 