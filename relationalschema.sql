
CREATE TABLE StudentCenter (
	ID INTEGER(10)  NOT NULL,
    name VARCHAR(30) NOT NULL,
    location VARCHAR(30) NOT NULL DEFAULT "Houston-Downtown",
    PRIMARY KEY (ID),
    UNIQUE (ID)
);

CREATE TABLE Instructor(
    ID INTEGER(10) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    department VARCHAR(200) NOT NULL,
    title VARCHAR(200),
    email VARCHAR(255) NOT NULL,
    salary INTEGER(10) NOT NULL,
    PRIMARY KEY (ID),
    UNIQUE (ID, email)
);

CREATE TABLE AcademicAdvisor (
	ID INTEGER(10) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    department VARCHAR(30) NOT NULL DEFAULT "center",
    email VARCHAR(30) NOT NULL,
    PRIMARY KEY (ID),
    UNIQUE (ID, email)
);


CREATE TABLE ExtracuricularActivity (
	ID INTEGER(10)  NOT NULL,
    name VARCHAR(30) NOT NULL,
    type VARCHAR(30) DEFAULT "School",
    description VARCHAR(255) DEFAULT "Activity for students",
    time DATE,
    centerID INTEGER(10),
    PRIMARY KEY (ID),
    UNIQUE(ID),
    FOREIGN KEY (centerID) REFERENCES StudentCenter(ID)
		ON UPDATE CASCADE
        ON DELETE SET NULL
);


CREATE TABLE Student(
	ID INTEGER(10)  NOT NULL,
	firstName VARCHAR(255)  NOT NULL,
	lastName VARCHAR(255)  NOT NULL,
	sex CHAR(1) NOT NULL CHECK(sex IN ('M', 'F', 'G', 'T', 'B', 'L')),
	dateOfBirth DATE NOT NULL,
	address VARCHAR(255)  NOT NULL,
	email VARCHAR(50)  NOT NULL,
	username VARCHAR(50),
	password VARCHAR(30),
	centerID INTEGER(10),
    advisorID INTEGER(10),
    PRIMARY KEY (ID),
    UNIQUE (ID, username, email),
    FOREIGN KEY (centerID) REFERENCES StudentCenter(ID)
		ON UPDATE CASCADE
        ON DELETE SET NULL,
	FOREIGN KEY (advisorID) REFERENCES AcademicAdvisor(ID)
		ON UPDATE CASCADE
        ON DELETE SET NULL
);


CREATE TABLE Financing (
	ID INTEGER(10) NOT NULL,
	eligibility CHAR(1) CHECK(eligibility IN ('Y', 'N')) NOT NULL,
	documentation TEXT,
	balance FLOAT(10) DEFAULT 0.0,
	studentID INTEGER(10) NOT NULL,
	centerID INTEGER(10),
    FOREIGN KEY (studentID) REFERENCES Student(ID)
		ON UPDATE CASCADE
        ON DELETE NO ACTION,
    FOREIGN KEY (centerID) REFERENCES StudentCenter(ID)
		ON UPDATE CASCADE
        ON DELETE NO ACTION
);


CREATE TABLE Task(
    ID INTEGER(10) NOT NULL, 
    type VARCHAR(50),
    description VARCHAR(255) DEFAULT "Activity for students",
    deadline DATE NOT NULL,
    advisorID INTEGER(10) NOT NULL,
    studentID INTEGER(10) NOT NULL,
    PRIMARY KEY (ID),
    UNIQUE (ID),
    FOREIGN KEY (advisorID) REFERENCES AcademicAdvisor(ID)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
	FOREIGN KEY (studentID) REFERENCES Student(ID)
		ON UPDATE CASCADE
        ON DELETE NO ACTION
);


CREATE TABLE Appointment(
	ID INTEGER(10) NOT NULL, 
	date datetime,
	note varchar(255),
    advisorID INTEGER(10) NOT NULL,
    studentID INTEGER(10) NOT NULL,
	PRIMARY KEY(ID),
    UNIQUE (ID),
	FOREIGN KEY (advisorID) REFERENCES AcademicAdvisor(ID)
      ON UPDATE CASCADE 
      ON DELETE NO ACTION,
	FOREIGN KEY (studentID) REFERENCES Student(ID)
      ON UPDATE CASCADE 
      ON DELETE NO ACTION
);


CREATE TABLE Course (
   ID INTEGER(10) NOT NULL,
   syllabus TEXT,
   title VARCHAR(255) NOT NULL,
   credits INTEGER(2),
   prerequisite VARCHAR(255),
   PRIMARY KEY(ID),
   UNIQUE (ID)
);

CREATE TABLE CourseTeaching (
    ID INTEGER(10) NOT NULL AUTO_INCREMENT,
   courseID INTEGER(10) NOT NULL,
   instructorID INTEGER(10) NOT NULL,
   semester VARCHAR(30),
   startDate date NOT NULL,
   endDate date NOT NULL,
   roomId INTEGER(10) DEFAULT 0,
   PRIMARY KEY(ID),
   UNIQUE (ID),
   FOREIGN KEY (instructorID) REFERENCES Instructor(ID)
       ON UPDATE CASCADE
       ON DELETE NO ACTION,
   FOREIGN KEY (courseID) REFERENCES Course(ID)
       ON UPDATE CASCADE
       ON DELETE NO ACTION
);


CREATE TABLE CourseEnrollment (
   studentID INTEGER(10) NOT NULL,
   courseID INTEGER(10) NOT NULL,
   grade CHAR(1),
   status VARCHAR(10),
   PRIMARY KEY (studentID, courseID),
   FOREIGN KEY (studentID) REFERENCES Student(ID)
       ON UPDATE CASCADE
       ON DELETE NO ACTION,
   FOREIGN KEY (courseID) REFERENCES Course(ID)
       ON UPDATE CASCADE
       ON DELETE NO ACTION
);