-- Store procedure: Add new song to Playlist
CREATE PROCEDURE add_song_to_Playlist
-- Parameters
	(
		@SongName	VARCHAR(50),
		@Playlist	VARCHAR(50)
	)
AS
BEGIN
	--Declare local variables
	DECLARE @RowCount	INT
	DECLARE @SongID		INT
	DECLARE @PlaylistID	INT

	-- Get the Primary Key of the Playlist
	SET @PlaylistID = (
						SELECT PlaylistID
						FROM PLAYLISTS
						WHERE PlaylistName LIKE @Playlist
					   )
	

	-- If the song is an album song, store it in PLAYLIST_ALBUM_SONGS
	SELECT @RowCount = COUNT(*)
	FROM ALBUM_SONGS
	WHERE Album_SongID = (
							SELECT Album_SongID
							FROM ALBUM_SONGS
							WHERE SongName LIKE @SongName
						  )
	IF (@RowCount != 0)
		BEGIN
		SET @SongID = (
							SELECT Album_SongID
							FROM ALBUM_SONGS
							WHERE SongName LIKE @SongName
						 )
		INSERT INTO PLAYLIST_ALBUM_SONGS
		VALUES (@PlaylistID, @SongID, CAST(GETDATE() AS DATE))
		RETURN
	END

	-- If the song is a single, store it in PLAYLIST_SINGLES
	SELECT @RowCount = COUNT(*)
	FROM SINGLE_SONGS
	WHERE SingleID = (
							SELECT SingleID
							FROM SINGLE_SONGS
							WHERE SingleName LIKE @SongName
						  )
	IF (@RowCount != 0)
		BEGIN
		SET @SongID = (
							SELECT SingleID
							FROM SINGLE_SONGS
							WHERE SingleName LIKE @SongName
						 )
		INSERT INTO PLAYLIST_SINGLES
		VALUES (@PlaylistID, @SongID, CAST(GETDATE() AS DATE))
		RETURN
	END

	PRINT 'The song ' + @SongName + ' does not exist in the database.'
	RETURN
END