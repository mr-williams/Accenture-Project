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

/*This query joins 4 Tables to maximize the information, This also removes any rows that contain 'NULL' for User_ID*/
SELECT Email,Reactions.User_ID,Content.Content_ID,Content.Category,Reactions.Type,Score,Sentiment,Content.Type,Datetime,URL
FROM Reactions
INNER JOIN ReactionTypes
ON ReactionTypes.Type = Reactions.Type
INNER JOIN Content
ON Reactions.Content_ID= Content.Content_ID
INNER JOIN Users
ON Reactions.User_ID = Users.User_ID

--- This point forward would show queries used for data Analysis ---

