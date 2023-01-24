-- Q3 [Done]: Finding the DepartmentID of Sale
select DepartmentId from department
where DeparmentName = 'Sale';
-- Q4 [Done]: Finding the information account with the longest full name
select *
from `account`
where length(fullname)= (select max(char_length(fullname)) from `account`);
-- Q5 [DONE]: Finding the account with longest full name and department id =3
WITH CTE_maxlength AS
(SELECT *
FROM `account`
WHERE departmentID=3
)
select max(fullname)
from CTE_maxlength;

-- Q6 [Done]: Finding the name of groups joining before 2019/12/20
select groupname from `group`
where createdate < '2019-12-20';
-- Question 7 [DONE]: Finding the questions with 4 answers
select questionid, count(questionid)
from answer
group by questionid
having count(questionid)>=4;

-- Question 8 [Done]: Finding examID with time duration >=60 minutes and created before 2019/12/20
select `code`
from exam
where (duration >=60) and CreateDate < '2019-12-20';
-- Question 9 [Done]: Finding the 5 lastest created groups
select *
from `group`
order by createdate desc
limit 5;

-- Question 10 [Done]: Count the number of employees with departmentid=2
select count(*) from department
where DepartmentID =2;
-- Question 11: Finding employees whose names staring by "D" and ennding by "o" 
select Fullname 
from `account`
where (substring_index(fullname,' ', -1)) like 'D%o';
-- Question 12 [Done]: Delete all exam created before 2019/12/20
delete 
from exam
where CreateDate < '2019-12-20';
select * from exam;
-- Question 13 [DONE]: Delete all questions starting by "câu hỏi"
DELETE
FROM `question`
WHERE (substring_index(Content,' ', 2))='câu hỏi';
-- Question 14 [DONE]: Update account with accountid=5 to become a new account whose name "Nguyễn Bá Lộc"and email "loc.nguyenba@vti.com.vn"
Update `account`
set fullname=N'Nguyễn Bá Lộc', email='loc.nguyenba@vti.com.vn'
where accountid=5;
-- Question 15 [DONE]: Change groupid=4 into accountid=5 in table groupaccount
UPDATE `GroupAccount` 
SET AccountID = 5 
WHERE GroupID = 4;


