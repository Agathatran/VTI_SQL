-- Q3 [Done]: Finding the DepartmentID of Sale
--  select DepartmentId from department
-- where DeparmentName = 'Sale'
-- Q4: Finding the information account with the longest full name
-- Q5: Finding the account with longest full name and department id =2
-- Q6 [Done]: Finding the name of groups joining before 2019/12/20
/*select groupname from `group`
where createdate < '2019-12-20'*/
-- Question 7: Finding the questions with 4 answers
-- Question 8 [Done]: Finding examID with time duration >=60 minutes and created before 2019/12/20
/*select *
from exam
where (duration >=60) and CreateDate < '2019-12-20'*/
-- Question 9 [Done]: Finding the 5 lastest created groups
/*select *
from `group`
order by createdate
limit 5*/

-- Question 10 [Done]: Count the number of employees with departmentid=2
/* select count(*) from department
where DepartmentID =2 */
-- Question 11 [Done]: Finding employees whose names staring by "D" and ennding by "o" 
/*select * 
from `account`
where (username like 'D%') and (username like '%o');*/
-- Question 12: Delete all exam created before 2019/12/20
/*delete 
from exam
where CreateDate < '2019-12-20'*/
-- Question 13 [Error answer]: Delete all questions starting by "câu hỏi"
-- Question 14: Update account with accountid=5 to become a new account whose name "Nguyễn Bá Lộc"and email "loc.nguyenba@vti.com.vn"
-- Question 15: Update so that accounts with id=5 will belong to group whose id being 4
