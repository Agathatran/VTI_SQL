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
having count(accountid)=3;
-- Question 5 [DONE]: Find the list of questions which have been used in exam the most
WITH used_question AS
(
SELECT question.questionid, count(question.questionID) as frequency
FROM examquestion
INNER JOIN question
ON examquestion.questionID = question.questionid
GROUP BY question.questionid
)
SELECT questionid, max(frequency)
FROM used_question
;
-- Question 6 [DONE]: Investigate the frequency of each category question which have been used.
WITH used_question AS
(
SELECT question.*, count(question.questionID) as frequency
FROM examquestion
INNER JOIN question
ON examquestion.questionID = question.questionid
GROUP BY question.questionid
)
SELECT *
FROM used_question
;
-- Question 7 [DONE]: Statistic the frequency of questions which have been use in exams.
WITH used_question AS
(
SELECT question.*, count(question.questionID) as frequency
FROM examquestion
INNER JOIN question
ON examquestion.questionID = question.questionid
GROUP BY question.questionid
)
SELECT *
FROM used_question
;
-- Question 8 [DONE]: Find the questions with the most answers.
WITH used_question AS
(
SELECT examquestion.*, count(examquestion.examid) as frequency
FROM examquestion
INNER JOIN question
ON examquestion.questionID = question.questionid
GROUP BY question.questionid
)
SELECT examid, max(frequency)
FROM used_question
;

-- Question 9[DONE]: Find the number of accounts in each group.
SELECT `group`.groupname, COUNT(groupaccount.accountid)
FROM groupaccount
JOIN `group`
ON groupaccount.groupid = `group`.groupid
GROUP BY groupaccount.accountid;
-- Question 10: Find the minimum number of position
WITH CTE_position AS
( SELECT `account`.positionid, `position`.PositionName, count(`account`.positionid) as num_of_mem
FROM `account`
INNER JOIN `position`
ON `account`.positionID = `position`.positionid
GROUP BY `account`.positionid
)
SELECT PositionID, PositionName, MIN(num_of_mem)
FROM CTE_Position
;
-- Question 11 [DONE]: How many dev, test, scrum master, and PM in each department?
SELECT positionname, count(PositionID)
FROM position
GROUP BY positionname
HAVING positionname in ('Dev', 'test', 'scum master', 'PM')
;
-- Question 12: Investigate the following information of each question: type, creator, answer content, etc.


-- Question 13 [DONE]: How many essay and multiple choice questions are there?
select typequestion.typeid, typequestion.typename, count(typequestion.typeid)
FROM typequestion
RIGHT JOIN question
ON typequestion.typeid = question.typeid
GROUP BY typeid
;
-- Question 14: Find the group without any account.


-- Question 16 [DONE]: Find the questions without answers.
SELECT question.questionID, question.content, answer.*
FROM answer
LEFT JOIN question
ON answer.QuestionID = question.questionid
WHERE	AnswerID is NULL
;
/*Question 17: [DONE]
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


/*Question 18: [DONE]
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