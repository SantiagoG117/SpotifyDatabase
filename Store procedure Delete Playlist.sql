-- Store Procedure: Delete a Playlist
CREATE PROCEDURE Delete_Playlist
-- Parameters
	(
		@Playlist	VARCHAR(50)
	)
AS
BEGIN
	-- Declare local variables
	DECLARE	@RowCount	INT
	DECLARE @PlaylistID	INT

	-- Check if the Playlist exist in the database
	SELECT @RowCount = COUNT(*)
	FROM PLAYLISTS
	WHERE PlaylistID = (
						SELECT PlaylistID
						FROM PLAYLISTS
						WHERE PlaylistName LIKE @Playlist
						)
	IF (@RowCount = 0)
		BEGIN
		PRINT 'The Playlist ' + @Playlist + ' does not exist.'
		RETURN
	END

	-- Get the Primary Key of the Playlist
	SET @PlaylistID = (
						SELECT PlaylistID
						FROM PLAYLISTS
						WHERE PlaylistName LIKE @Playlist
					   )

	DELETE FROM PLAYLISTS
	WHERE PlaylistID = @PlaylistID

END