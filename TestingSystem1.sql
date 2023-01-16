drop database if exists Testing_System_Assignment_1;
create database Testing_System_Assignment_1;
use Testing_System_Assignment_1;
create table Department(
			DepartmentID int unsigned auto_increment unique not null, 
			DeparmentName varchar(50) not null unique key);
create table `position`(
			PositionID bigint unsigned auto_increment not null primary key, 
            PositionName varchar(50) not null unique);
create table `account`(
					accountID int unsigned auto_increment primary key not null,
                    email varchar(50) unique not null, 
					username varchar(50) unique not null, 
                    fullname varchar(50) not null, 
                    DepartmentID int unsigned unique not null, 
                    positionid int unsigned unique not null, 
                    createdate datetime default now(),
                    foreign key (DepartmentID) references Department(DepartmentID));
create table `group`(
					groupid int unique primary key not null, 
					groupname varchar(50) not null, 
                    creatorid int unsigned not null, 
                    createdate datetime default now());
create table groupaccount(
							groupid int auto_increment primary key unique not null, 
							accountid int unsigned unique not null, 
                            joindate datetime );
create table typequestion(
			typeid	int unsigned auto_increment primary key  unique not null,
            typename varchar(50) unique not null 
);
create table categoryquestion(
			categoryid int unsigned auto_increment unique not null,
            categoryname varchar(50) unique not null
);
create table question(
			questionid 	int unsigned auto_increment primary key not null,
            content		varchar(50) not null,
            categoryid	int unique not null,
            typeid		int  unsigned unique not null,
            creatorid	int unsigned unique not null,
            createdate	datetime default now() not null
);
create table exam(
			examid int primary key,
            `code` int,
            title varchar(50),
            categoryID	int,
            Duration	time,
            CreatorID	int,
            CreatorDate	date
);
create table ExamQuestion(
			examID int,
            QuestionID int
)

