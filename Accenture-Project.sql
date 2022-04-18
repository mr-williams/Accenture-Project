/*This Query Joins certain csv files to show the General info of the Users on Social Buzz*/
SELECT Profile.User_ID,Name,Age, Email,Address,Interests, Device, Duration
INTO User_info
FROM Profile
INNER JOIN Location
ON Profile.User_ID = Location.User_ID
INNER JOIN Session
ON Location.User_ID = Session.User_ID
INNER JOIN Users
ON Session.User_ID = Users.User_ID

/*Thes Queries were used in the Data Cleaning Phase*/
SELECT *
FROM Reactions
WHERE Type is NULL

DELETE FROM Reaction WHERE Type=' ' OR Type IS NULL;

