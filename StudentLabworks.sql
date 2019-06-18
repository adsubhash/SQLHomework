	
	DROP DATABASE SchoolStudents;
	GO
	CREATE DATABASE SchoolStudents;
	GO
	USE SchoolStudents;
	GO
	CREATE DATABASE SchoolStudents;
	CREATE TABLE Students (
	StudentID int not null primary key,
    FName varchar(32) not null,
    LName varchar(32)not null,
    UserName Varchar(32) not null,
	[Pwd] [varchar] (64) NOT NULL,
	UpdateTime DateTime not null
	);
		  
	CREATE TABLE Homework (
    HomeworkID int not null primary key,
	ParentID int, 
	StudentID int not null foreign key (StudentID) references Students(StudentID),
	TeacherComment varchar(512) not null,
	UpdateTime datetime not null
	);
	
	CREATE TABLE Attendance (
	StudentID int,
	ClassSchedule dateTime
	);
	
    
	CREATE TABLE ExtraActivities (
    GameID int not null primary key,
	GameName varchar (16),
	CoachID varchar (16),
	ParentID int, 
	StudentID int not null foreign key (GameID) references Students(StudentID),
	CoachComment varchar(512) not null,
	UpdateTime datetime not null
	);
	
	CREATE TABLE Grade (
    StudentID int not null primary key,
	Level int not null,
	Assignment varchar (1024),
	UpdateTime date not null
	);