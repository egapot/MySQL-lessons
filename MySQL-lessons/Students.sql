drop database if exists students;
create database students char set utf8;

use students;

create table parents (
    id int not null primary key auto_increment,
    parent_name varchar(45) not null,
    work_place varchar(60) not null,
    tel_number varchar(12) not null,
    student_id int not null
);

create table students (
    id int not null primary key auto_increment,
    student_name varchar(45) not null,
    birth_date date not null,
    tel_number varchar(12) not null,
    room_id int not null, 
    group_number_id int not null
);

create table faculty (
    id int not null primary key auto_increment,
    faculty varchar(30) not null,
    speciality varchar(30) not null unique
);

create table group_number (
    id int not null primary key auto_increment,
    id_group varchar(6) not null unique,
    course tinyint not null,
    faculty_id int not null
);

create table rooms (
    id int not null primary key auto_increment,
    room_number smallint not null unique
);

create table furniture (
    id int not null primary key auto_increment,
    invent_number int not null unique,
    furniture_name varchar(30) not null,
    room_id int not null
);

create table incidents (
    id int not null primary key auto_increment,
    incident varchar(30) not null,
   student_id int not null
);

alter table parents add foreign key (student_id) references students(id);
alter table group_number add foreign key (faculty_id) references faculty(id);
alter table students add foreign key (group_number_id) references group_number(id);
alter table students add foreign key (room_id) references rooms(id);
alter table furniture add foreign key (room_id) references rooms(id);
alter table incidents add foreign key (student_id) references students(id);