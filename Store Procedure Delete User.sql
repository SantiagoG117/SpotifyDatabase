-- Store Procedure: Delete User
CREATE PROCEDURE Delete_User
-- Parameters
	(
		@UserName	VARCHAR(50)
	)
AS
BEGIN
	-- Declare local variables
	DECLARE	@RowCount	INT
	DECLARE @UserID	INT

	-- Check if the Playlist exist in the database
	SELECT @RowCount = COUNT(*)
	FROM USERS
	WHERE UserID = (
						SELECT UserID
						FROM USERS
						WHERE UserName LIKE @UserName
						)
	IF (@RowCount = 0)
		BEGIN
		PRINT 'The User ' + @UserName + ' does not exist.'
		RETURN
	END

	-- Get the Primary Key of the Playlist
	SET @UserID = (
						SELECT UserID
						FROM USERS
						WHERE UserName LIKE @UserName
					   )

	DELETE FROM USERS
	WHERE UserID = @UserID
	RETURN
END