/*This Query Joins certain csv files to show the General info of the Users on Social Buzz*/
SELECT DISTINCT Profile.User_ID,Name,Age, Email,Address,Interests, Device, Duration
INTO User_info
FROM Profile
INNER JOIN Location
ON Profile.User_ID = Location.User_ID
INNER JOIN Session
ON Location.User_ID = Session.User_ID
INNER JOIN Users
ON Session.User_ID = Users.User_ID

--- These Queries were used in the Data Cleaning Phase ---
SELECT *
FROM Reactions
WHERE Type is NULL
DELETE FROM Reaction WHERE Type=' ' OR Type IS NULL;

/*This query joins 3 Tables to maximize the information*/
SELECT Reactions.User_ID,Content.Content_ID,Content.Category,Reactions.Type,Sentiment,Score,Content.Type,Datetime,URL
FROM Reactions
INNER JOIN ReactionTypes
ON ReactionTypes.Type = Reactions.Type
INNER JOIN Content
ON Reactions.Content_ID= Content.Content_ID

/**/
UPDATE Usage_Data
SET Category = REPLACE(Category,'"','')

--- This point forward would show queries used for data Analysis ---
/**/
SELECT DISTINCT(Category), COUNT(Score) AS Score
FROM Usage_Data
GROUP BY Category
ORDER BY Score DESC

