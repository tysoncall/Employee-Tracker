
CREATE DATABASE Employee_Tracker1;
USE Employee_Tracker1;

-- Create the department table

CREATE TABLE department (
  id int AUTO_INCREMENT,
  name varchar(30) NOT NULL,
  PRIMARY KEY(id)
);
-- Create the role table
CREATE TABLE role (
  id int AUTO_INCREMENT,
  title varchar(30) NOT NULL,
  salary decimal(9.2) NOT NULL,
  dept_id int NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (dept_id) 
  REFERENCES department(id)
  ON DELETE CASCADE
);
-- Create the employee table
CREATE TABLE employee (
  id int AUTO_INCREMENT,
  first_name varchar(30) NOT NULL,
  last_name varchar(30) NOT NULL,
  role_id int NOT NULL,
  manager_id int,
  PRIMARY KEY(id),
  CONSTRAINT fk_role_id
  FOREIGN KEY (role_id) 
  REFERENCES role(id)
  ON DELETE CASCADE
);
-- Insert a set of records.
INSERT INTO department (name) VALUES ("Back Office");
INSERT INTO department (name) VALUES ("Sales/Marketing");
INSERT INTO department (name) VALUES ("Support");
INSERT INTO department (name) VALUES ("Kitchen/Groundskeeping");
INSERT INTO role (title, salary, dept_id) VALUES ("CEO", 21032, 1);
INSERT INTO role (title, salary, dept_id) VALUES ("CFO", 1171, 1);
INSERT INTO role (title, salary, dept_id) VALUES ("Janitor", 25, 2);
INSERT INTO role (title, salary, dept_id) VALUES ("Marketing Lead", 23, 2);
INSERT INTO role (title, salary, dept_id) VALUES ("Sales Lead", 13, 3);
INSERT INTO role (title, salary, dept_id) VALUES ("HR Lead", 11, 3);
INSERT INTO role (title, salary, dept_id) VALUES ("Distribution Lead", 35, 4);
INSERT INTO role (title, salary, dept_id) VALUES ("Chef", 14, 4);
INSERT INTO role (title, salary, dept_id) VALUES ("Ground Keeper", 7, 4);
INSERT INTO role (title, salary, dept_id) VALUES ("Maid", 1, 4);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Luke", "Skywalker", 1, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Pickle", "Rick", 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Billy", "Mays", 3, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Homer", "Simpson", 4, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Savannah", "La-Follette", 4, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Gideon", "Call", 4, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Harry", "Larry", 5, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Bob", "Burro", 6, 7);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Howard", "Howler", 6, 7);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Linda", "Lips", 7, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Frank", "TheTank", 8, 10);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Scary", "Terry", 8, 10);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Harry", "Terry", 9, 10);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Michael", "Meyers", 9, 10);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("OJ", "Simpson", 9, 10);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Kawhi", "Leonard", 10, 10);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Tyson", "Call", 10, 10);