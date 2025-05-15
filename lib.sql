CREATE DATABASE Library;

USE Library;

CREATE TABLE Authors(
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50)
);

CREATE TABLE Genres(
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE Books (
    isbn VARCHAR(13) PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    publication_year YEAR,
    author_id INT,
    genre_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE Members(
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR (50) NOT NULL UNIQUE,
    address VARCHAR(50),
    phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE Loans(
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    book_isbn VARCHAR(13),
    member_id INT,
    loan_date DATE NOT NULL,
    return_date DATE NOT NULL,
    FOREIGN KEY (book_isbn) REFERENCES Books(isbn),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

-- Insert data
INSERT INTO Genres (name) VALUES ('Fantasy');
INSERT INTO Authors (name) VALUES ('J.K. Rowling');

