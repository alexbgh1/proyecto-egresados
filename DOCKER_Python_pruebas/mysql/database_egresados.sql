USE db;

CREATE TABLE students(
    StudentID in not null AUTO_INCREMENT,
    FirstName varchar(100) NOT NULL,
    Surname varchar(100) NOT NULL,
    PRIMARY KEY (StudentID)
);

INSERT INTO students(FirstName, Surname)
VALUES("juan", "AAAAXD"), ("EM","PEPEPE");