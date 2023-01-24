-- Question 1 [DONE]: Listing of staffs' information and their department
SELECT A.*, D.*
FROM `account` A
JOIN department D
ON A.departmentID = D.departmentID
;
-- Question 2 [DONE]: Find the information of account created after 20/12/2010
select * from `account`
where '2020-12-20' < createdate;
-- Question 3 [DONE]: Find the information of all developers 
SELECT `account`.* , `position`.*
FROM `account`
JOIN `position`
ON `account`.positionID=`position`.positionID
WHERE position.PositionName = 'Dev'
;

-- Question 4 [DONE]: Find the information of all departments with more than 3 employees
SELECT * 
FROM `account`
having count(DepartmentID)=3;
-- Question 5 [DONE]: Find the list of questions which have been used in exam the most
SELECT * 
FROM exam
JOIN examquestion ON exam.examid=examquestion.examid;
-- Question 6: Investigate the frequency of each category question which have been used.

-- Question 7: Statistic the frequency of questions which have been use in exams.
SELECT DISTINCT COUNT(*) 
FROM exam
JOIN examquestion ON exam.examid=examquestion.examid
GROUP BY examquestion.ExamID
;
-- Question 8: Find the questions with the most answers.
-- Question 9: Find the number of accounts in each group .
-- Question 10: Tìm chức vụ có ít người nhất
-- Question 11: How many dev, test, scrum master, and PM in each department?
-- Question 12: Investigate the following information of each question: type, creator, answer content, etc.
-- Question 13: How many essay and multiple choice questions are there?
-- Question 14: Find the group without any account.
-- Question 16: Find the questions without answers.
/*Question 17: 
a)[DONE] Listing the accounts in group 1 (accountID= groupID).*/
SELECT `account`.accountID, `account`.fullname
FROM	`account`
JOIN	groupaccount
ON `account`.accountID= groupaccount.accountid
WHERE groupaccount.groupid=1;

/*b) [DONE] Listing accounts in group 2*/
SELECT `account`.accountID, `account`.fullname
FROM	`account`
JOIN	groupaccount
ON `account`.accountID= groupaccount.accountid
WHERE groupaccount.groupid=2;
/*c) [DONE] Combine the results of a) and b) so that there is not collapsed answers.*/
SELECT `account`.accountID, `account`.fullname
FROM	`account`
JOIN	groupaccount
ON `account`.accountID= groupaccount.accountid
WHERE groupaccount.groupid=1
UNION
SELECT `account`.accountID, `account`.fullname
FROM	`account`
JOIN	groupaccount
ON `account`.accountID= groupaccount.accountid
WHERE groupaccount.groupid=2;


/*Question 18: 
a) Listing groups with more than 5 members.*/
SELECT groupaccount.groupid,`group`.groupname, count(groupaccount.accountid) as frequency
FROM `group`
JOIN groupaccount ON groupaccount.groupid = `group`.groupid
HAVING count(groupaccount.accountid) >5;

/*b) Listing groups with less than 7 memebers*/
SELECT groupaccount.groupid,`group`.groupname, count(groupaccount.accountid) as frequency
FROM `group`
JOIN groupaccount ON groupaccount.groupid = `group`.groupid
HAVING count(groupaccount.accountid)< 5;

/*c) Combine the results of a) and b).*/
SELECT groupaccount.groupid,`group`.groupname, count(groupaccount.accountid) as frequency
FROM `group`
JOIN groupaccount ON groupaccount.groupid = `group`.groupid
HAVING count(groupaccount.accountid) >5
UNION
SELECT groupaccount.groupid,`group`.groupname, count(groupaccount.accountid) as frequency
FROM `group`
JOIN groupaccount ON groupaccount.groupid = `group`.groupid
HAVING count(groupaccount.accountid)< 5;