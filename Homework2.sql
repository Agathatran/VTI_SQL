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
					accountID int unsigned auto_increment primary key,
                    email varchar(50) unique not null, 
					username nvarchar(50) unique not null, 
                    fullname nvarchar(50) not null, 
                    DepartmentID int unsigned unique not null, 
                    positionid int unsigned  not null, 
                    createdate datetime default now(),
                    foreign key (DepartmentID) references Department(DepartmentID)
                    );
create table `group`(
					groupid tinyint AUTO_INCREMENT primary key, 
					groupname nvarchar(100) not null, 
                    creatorid int unsigned not null, 
                    createdate datetime default now()
);
create table groupaccount(
							groupid int auto_increment primary key unique not null, 
							accountid int unsigned unique not null, 
                            joindate datetime );
create table typequestion(
			typeid	tinyint unsigned auto_increment primary key  unique not null,
            typename varchar(50) unique not null 
);
create table categoryquestion(
			categoryid tinyint unsigned auto_increment primary key,
            categoryname nvarchar(50) unique key not null
);
create table question(
			questionid 	int unsigned auto_increment primary key,
            content		nvarchar(50) not null,
            categoryid	tinyint unsigned,
            typeid		tinyint unsigned,
            creatorid	int unsigned unique not null,
            createdate	datetime default now(),
            FOREIGN KEY(categoryid) REFERENCES categoryquestion(categoryid),
            FOREIGN KEY(TYPEID) REFERENCES TypeQuestion(TypeID),
            FOREIGN KEY(CreatorID) REFERENCES `Account`(AccountID)
);
DROP TABLE IF EXISTS Answer;
CREATE TABLE Answer(
		AnswerID int unsigned AUTO_INCREMENT PRIMARY key,
        Content nvarchar(200) NOT NULL,
        QuestionID INT UNSIGNED NOT NULL,
        isCorrect BIT DEFAULT 1,
        FOREIGN KEY(QuestionID) REFERENCES Question(QuestionID)
);
DROP TABLE IF EXISTS Exam;
create table exam(
			examid int UNSIGNED AUTO_INCREMENT primary key,
            `code` NVARCHAR(100) NOT NULL,
            title nvarchar(50) NOT NULL, 
            categoryID	TINYINT UNSIGNED NOT NULL,
            Duration 	TINYINT UNSIGNED NOT NULL,
            CreatorID	int UNSIGNED NOT NULL,
            CreateDate	DATETIME  DEFAULT now(),
            FOREIGN KEY(CategoryID) REFERENCES CategoryQuestion(CategoryID),
            FOREIGN KEY(CreatorID) REFERENCES `Account`(AccountID)
);
DROP TABLE IF EXISTS ExamQuestion;
create table ExamQuestion(
			ExamID int unsigned NOT NULL,
            questionID INT UNSIGNED NOT NULL,
            PRIMARY KEY (ExamID, QuestionID),
            FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID),
);
INSERT INTO Department(DeparmentName)
VALUES
	(N'Marketing'),
    (N'Sale'),
    (N'Bảo vệ'),
    (N'Nhân sự'),
    (N'Kỹ thuật'),
    (N'Tài chính'),
    (N'Phó giám đốc'),
    (N'Giám đốc'),
    (N'Thư kí'),
    (N'No person'),
    (N'Bán hàng'),
    (N'Department 1'),
    (N'Department 2'),
    (N'Department 3'),
    (N'Department 4'),
    (N'Department 5'),
    (N'Department 6'),
    (N'Deparment 7');
Insert into `Position`(PositionName) Value ('Dev');
Insert into `Position`(PositionName) Value ('test');
INSERT INTO `Position`(PositionName) VALUE ('Scum Master');
INSERT INTO `Position`(PositionName) VALUE ('PM');
INSERT INTO `Position`(PositionName) VALUE ('QA');
INSERT INTO `Position`(PositionName) value ('BA');
insert into `position`(PositionName) VALUE ('CEO');
INSERT INTO `position`(PositionName) VALUE ('CTO');
INSERT INTO `position`(PositionName) VALUE ('Product Owner');

-- Insert Data into table Account
Insert INTO `account`( email						,username			,fullname			,DepartmentID 	,positionid		,createdate)
VALUE 				('lamkichi@gmail.com'		,'lamchiki'			,'Lam Chi Ky'		,'5'			,'1'			,'2020-03-05'),
					('phamtrungkien@gmail.com'	,'phamtrungkien'	,'Pham Trung Kien'	,'1'			,'2'			,'2020-03-05'),
                    ('hongochiep@gmail.com' 	,'hongochiep'		,'HoNgocHiep'		,'2'			,'3'			,'2020-03-07'),
                    ('nguyentrongthai@gmail.com' ,'nguyentrongthai' ,'Nguyen Trong Thai','3'			,'4'			,'2020-03-08'),
                    ('nguyenductien@gmail.com'	,'nguyenductien'	,'Nguyen Duc Tien'	,'4'			,'4'			,'2020-03-10'),
                    ('buianhtuan@gmail.com'     ,'Buianhtuan'		,'Bui Anh Tuan'		,'6'			,'3'			,'2020-04-05'),
                    ('nguyenxuanhau@gmail.com'	,'nguyenxuanhau'	,'Nguyen Xuan Hau'	,'7'			,'2'			,'2020-04-05'),
                    ('trantheanh@gmail.com'		,'trantheanh'		,'Tran The Anh'		,'8'			,'1'			,'2020-04-07'),
                    ('nguyenhoangthanh@gmail.com' ,'nguyenhoangthanh','Nguyen Hoang Thanh','9'			,'2'			,'2020-04-07'),
                    ('ngotritrong@gmail.com' 	,'ngotritrong'		,'Ngo Tri Trong'	,'11'			,'2'			,'2020-04-07'),
                    ('maivanthuong@gmail.com'	,'maivanthuong'		,'Mai Van Thuong'	,'12'			,'2'			,'2020-04-07'),
                    ('hoangvancuong@gmail.com'	,'hoangvancuong'  	,'Hoang Van Cuong'	,'13'			,'2'			,'2020-04-07'),
                    ('havietkhanh@gmail.com'	,'havietkhanh'		,'Ha Viet Khanh'	,'14'			,'2'			,'2020-04-07'),
                    ('nguyentruongan@gmail.com'	,'nguyentruongan'	,'Nguyen Truong An'	,'15'			,'2'			,'2020-04-07'),
                    ('nguyenthingocthu@gmail.com','nguyenthingocthu','Nguyen Thi Ngoc Thu', '16' 		,'2'			,'2020-04-07'),
                    ('nguyenthihongtuoi@gmail.com','nguyenthihongtuoi','Nguyen Thi Hong Tuoi','17'		,'2'			,'2020-04-07'),
                    ('vtiacademy@gmail.com'		,'vtiacademy'	,'Vi Ti Ai'				,'10'		,'1'				,'2020-04-09');
INSERT INTO `Group`(groupname				,creatorid		,createdate)
VALUE				(N'Testing System'		,'5'			,'2020-03-05'),
					(N'Development'			,'1'			,'2020-03-07'),
					(N'VTI Sale 01'			,'2'			,'2020-03-09'),
					(N'VTI Sale 02a'		,'3'			,'2020-03-10'),
                    (N'VTI Sale 02b'		,'4'			,'2020-03-28'),
                    (N'VTI Creator'			,'6'			,'2020-04-06'),
                    (N'VTI Marketing 01'	,'7'			,'2020-04-07'),
                    (N'Management'			,'8'			,'2020-04-08'),
                    (N'Chat with love'		,'9'			,'2020-04-09'),
                    (N'Vi Ti Ai'			,'10'			,'2020-04-10');
-- Insert data into table TypeQuestion
INSERT INTO TypeQuestion(TypeName) VALUE ('Essay');
INSERT INTO TypeQuestion(TypeName) VALUE ('Multiple-Choice');

-- Insert data into table CategoryQuestion
INSERT INTO CategoryQuestion(CategoryName) VALUE ('Java');
INSERT INTO CategoryQuestion(CategoryName) VALUE ('ASP.NET');
INSERT INTO CategoryQuestion(CategoryName) VALUE ('ADO.NET');
INSERT INTO CategoryQuestion(CategoryName) VALUE	('SQL');
INSERT INTO CategoryQuestion(CategoryName) VALUE ('Postman');
INSERT INTO CategoryQuestion(CategoryName) VALUE ('Ruby');
INSERT INTO CategoryQuestion(CategoryName) VALUE ('Python');
INSERT INTO CategoryQuestion(CategoryName) VALUE ('C++');
INSERT INTO CategoryQuestion(CategoryName) VALUE ('C Sharp');
INSERT INTO CategoryQuestion(CategoryName) VALUE ('PHP');

-- Insert data into table Question
INSERT INTO Question(Content		,CategoryID		,TypeID			,CreatorID		,CreateDate)
VALUE		(N'Câu hỏi về Java'		,1				,'1'			,'1'			,'2020-04-05'),
			(N'Câu hỏi về PHP'		,10				,'2'			,'2'			,'2020-04-05'),
            (N'Câu hỏi C#'			,9				,'2'			,'3'			,'2020-04-06'),
            (N'Hỏi về Ruby'			,6				,'1'			,'4'			,'2020-04-06'),
            (N'Hỏi về Postman'		,5				,'1'			,'5'			,'2020-04-06'),
            (N'Hỏi về ADO.NET'		,3				,'2'			,'6'			,'2020-04-06'),
            (N'Hỏi về ASP.NET'		,2				,'1'			,'7'			,'2020-04-06'),
            (N'Hỏi về C++'			,8				,'1'			,'8'			,'2020-04-07'),
            (N'Hỏi về SQL'			,4				,'2'			,'9'			,'2020-04-07'),
            (N'Hỏi về Python'		,7				,'1'			,'10'			,'2020-04-07');
-- Insert data into table Groupaccount
INSERT INTO Groupaccount (GroupID		,AccountID		,JoinDate)
VALUE					(1				, 1			,'2019-03-05'),
						(2				,2			,'2020-03-07'),
                        (3				,3			,'2020-03-09'),
                        (4				,4			,'2020-03-10'),
                        (5				,5			,'2020-03-28'),
                        (6				,6			,'2020-04-06'),
                        (7				,7			,'2020-04-07'),
                        (8				,8			,'2020-04-08'),
                        (9				,9			,'2020-04-09'),
                        (10				,10			,'2020-04-10');
-- insert data into table Answer
INSERT INTO Answer	( Content		, QuestionID	, isCorrect	)
VALUE 				(N'Trả lời 01'	,   1			,	0		),
					(N'Trả lời 02'	,   1			,	1		),
                    (N'Trả lời 03'	,   1			,	0		),
                    (N'Trả lời 04'	,   1			,	1		),
                    (N'Trả lời 05'	,   2			,	1		),
                    (N'Trả lời 06'	,   3			,	1		),
                    (N'Trả lời 07'	,   4			,	0		),
                    (N'Trả lời 08'	,   8			,	0		),
                    (N'Trả lời 09'	,   9			,	1		),
                    (N'Trả lời 10'	,   10			,	1		);
	
-- Insert data in table Exam
INSERT INTO Exam	(`Code`		, Title					, CategoryID	, Duration	, CreatorID		, CreateDate )
VALUE 				('VTIQ001'		, N'Đề thi C#'			,	1			,	60		,   '5'			,'2019-04-05'),
					('VTIQ002'		, N'Đề thi PHP'			,	10			,	60		,   '1'			,'2019-04-05'),
                    ('VTIQ003'		, N'Đề thi C++'			,	9			,	120		,   '2'			,'2019-04-07'),
                    ('VTIQ004'		, N'Đề thi Java'		,	6			,	60		,   '3'			,'2020-04-08'),
                    ('VTIQ005'		, N'Đề thi Ruby'		,	5			,	120		,   '4'			,'2020-04-10'),
                    ('VTIQ006'		, N'Đề thi Postman'		,	3			,	60		,   '6'			,'2020-04-05'),
                    ('VTIQ007'		, N'Đề thi SQL'			,	2			,	60		,   '7'			,'2020-04-05'),
                    ('VTIQ008'		, N'Đề thi Python'		,	8			,	60		,   '8'			,'2020-04-07'),
                    ('VTIQ009'		, N'Đề thi ADO.NET'		,	4			,	90		,   '9'			,'2020-04-07'),
                    ('VTIQ010'		, N'Đề thi ASP.NET'		,	7			,	90		,   '10'		,'2020-04-08');
                    
-- Insert data into table ExamQuestion
INSERT INTO ExamQuestion(ExamID , QuestionID )
VALUES		( 1 , 5 ),
			( 2 , 10 ),
			( 3 , 4 ),
			( 4 , 3 ),
			( 5 , 7 ),
			( 6 , 10 ),
			( 7 , 2 ),
			( 8 , 10 ),
			( 9 , 9 ),
			( 10 , 8 );
            



                    

