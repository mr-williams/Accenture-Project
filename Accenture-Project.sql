SELECT Profile.User_ID,Name,Age, Email,Address,Interests, Device, Duration
INTO User_info
FROM Profile
INNER JOIN Location
ON Profile.User_ID = Location.User_ID
INNER JOIN Session
ON Location.User_ID = Session.User_ID
INNER JOIN Users
ON Session.User_ID = Users.User_ID



