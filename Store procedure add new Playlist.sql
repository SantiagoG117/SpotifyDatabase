-- Store procedure: Add new Playlist

CREATE PROCEDURE Add_Playlist
--Parameters
(
	@PlayListName	VARCHAR (50),
	@UserName		VARCHAR(50)
)
AS
BEGIN
	--Declare local variables
	DECLARE @RowCount	INT
	Declare @OwnerID	INT
	
	-- Check if Username does not exists in the database. If it does not, terminate
	SELECT @RowCount = COUNT(*)
	FROM USERS
	WHERE UserName LIKE @UserName
	IF(@RowCount = 0)
		BEGIN
		Print 'The username ' + @UserName + ' does not exist.'
		RETURN
	END

	-- Check if the name of the Playlist already exists in the database
	SELECT @RowCount = COUNT(*)
	FROM PLAYLISTS
	WHERE PlaylistID = (
							SELECT PlaylistID
							FROM PLAYLISTS
							WHERE PlaylistName LIKE @PlayListName
						)
	IF(@RowCount != 0)
		BEGIN
		Print 'The Playlist ' + @PlayListName + ' already exists.'
		RETURN
	END

	-- Create the new Playlist
	SET @OwnerID = (
						SELECT UserID
						FROM USERS
						WHERE UserName LIKE @UserName
					)

	INSERT INTO PLAYLISTS
	VALUES(@PlayListName, CAST(GETDATE() AS DATE), @OwnerID)
	RETURN
END