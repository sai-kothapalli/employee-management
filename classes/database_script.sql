DROP DATABASE IF EXISTS employees;
CREATE DATABASE IF NOT EXISTS employees;
USE employees;


DROP TABLE IF EXISTS emp_communication,
emp_address,
                     employees;

CREATE TABLE employees (
    emp_no      INT             NOT NULL AUTO_INCREMENT,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    title   VARCHAR(16)         NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE emp_address (
    id      INT AUTO_INCREMENT,
    emp_number      INT NOT NULL, 
    addr_type   VARCHAR(50) ,
    house_number     INT ,
    street VARCHAR(50),
    unit VARCHAR(10),
    City VARCHAR(20),
    State VARCHAR(15),
    zipcode VARCHAR(15),
    PRIMARY KEY (id),
    FOREIGN KEY (emp_number)  REFERENCES employees   (emp_no) ON DELETE CASCADE
);


CREATE TABLE emp_communication (
    id      INT AUTO_INCREMENT,
    emp_number      INT NOT NULL, 
    communication_type   VARCHAR(50),
    communication_value  VARCHAR(50),
    preffered VARCHAR(50),
    PRIMARY KEY (id),
    FOREIGN KEY (emp_number)  REFERENCES employees   (emp_no) ON DELETE CASCADE
);

