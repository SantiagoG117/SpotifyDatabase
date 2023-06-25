-- Store Procedure: Delete a song from a given Playlist
CREATE PROCEDURE Delete_song_from_Playlist
-- Parameters
	(
		@SongName	VARCHAR(50),
		@Playlist	VARCHAR(50)
	)
AS
BEGIN
	-- Declare local variables
	DECLARE	@RowCount	INT
	DECLARE @PlaylistID	INT
	DECLARE @SongID		INT

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

-- If the song is an album song, delete it from PLAYLIST_ALBUM_SONGS
	SELECT @RowCount = COUNT(*)
	FROM ALBUM_SONGS
	WHERE Album_SongID = (
							SELECT Album_SongID
							FROM ALBUM_SONGS
							WHERE SongName LIKE @SongName
						  )
	IF (@RowCount != 0)
		BEGIN
		DELETE FROM PLAYLIST_ALBUM_SONGS
		WHERE PlaylistID = @PlaylistID 
			  AND 
			  Album_SongID = (
								SELECT Album_SongID
								FROM ALBUM_SONGS
								WHERE SongName LIKE @SongName
							  )
		RETURN
	END

	-- If the song is a single, delete it from PLAYLIST_SINGLES
	SELECT @RowCount = COUNT(*)
	FROM SINGLE_SONGS
	WHERE SingleID = (
							SELECT SingleID
							FROM SINGLE_SONGS
							WHERE SingleName LIKE @SongName
					 )
	IF (@RowCount != 0)
		BEGIN
		DELETE FROM PLAYLIST_SINGLES
		WHERE PlaylistID = @PlaylistID
			  AND
			  SingleID = (
							SELECT SingleID
							FROM SINGLE_SONGS
							WHERE SingleName LIKE @SongName 
						  )
		RETURN
	END

	PRINT 'The song ' + @SongName + ' does not exist in the database.'
	RETURN

END