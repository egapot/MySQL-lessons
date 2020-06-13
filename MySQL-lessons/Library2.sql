DROP DATABASE IF EXISTS library;
CREATE DATABASE library CHAR SET utf8;

USE library;

CREATE TABLE books(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(120) NOT NULL,
    description TEXT,
    price DECIMAL(5, 2) NOT NULL default 0.00,
    isbn VARCHAR(20) NOT NULL unique,
    category_id INT NOT NULL
    );

CREATE TABLE category_books  (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
category VARCHAR (30) NOT NULL unique);

 CREATE TABLE authors (
 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 author_first_name VARCHAR(45) NOT NULL,
    author_last_name VARCHAR(45) NOT NULL,
    author_email VARCHAR(50) NOT NULL ,
    author_adres VARCHAR (100) default null,
    author_birthday DATE NOT NULL);
    
CREATE TABLE authors_books (
author_id INT NOT NULL,
book_id INT NOT NULL
);
    
ALTER TABLE books ADD FOREIGN KEY (category_id) REFERENCES category_books(id);
ALTER TABLE authors_books ADD FOREIGN KEY (author_id) REFERENCES authors(id);
ALTER TABLE authors_books ADD FOREIGN KEY (book_id) REFERENCES books(id);
    
    
    
