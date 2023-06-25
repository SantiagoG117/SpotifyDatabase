-- Store procedure: Add new user
CREATE PROCEDURE Add_User
--Parameters
(
	@UserName	VARCHAR(50),
	@Password	VARCHAR(50),
	@FirstName	VARCHAR(50),
	@LastName	VARCHAR (50)		
)

AS
BEGIN
	--Declare local variables
	DECLARE @RowCount	INT
	
	-- Check if the Username already exists in the database
	SELECT @RowCount = COUNT(*)
	FROM USERS
	WHERE UserName LIKE @UserName
	IF(@RowCount != 0)
		BEGIN
		Print 'The username ' + @UserName + ' already exist.'
		RETURN
	END

	INSERT INTO USERS
	VALUES (@UserName, @Password, @FirstName, @LastName)
	RETURN
END