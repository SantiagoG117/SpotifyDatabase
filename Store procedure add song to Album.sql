-- Store procedure: Add songs to an Album

CREATE PROCEDURE Add_song_to_album 
-- Parameters
(
	@SongName	VARCHAR(50),
	@Duration	CHAR(5),
	@Album		VARCHAR(50)
)
AS
BEGIN
	-- Declare local variables
	DECLARE	@RowCount	INT
	DECLARE	@AlbumID	INT

	-- Check if the album exists, if it does not, terminate.
	SELECT @RowCount = COUNT(*)
	FROM ALBUMS
	WHERE AlbumName LIKE @Album
	IF(@RowCount = 0)
		BEGIN 
		PRINT 'The album ' + @Album + ' does not exist. Please add it before adding a new song to this album.'
		RETURN
	END

	--Check if the song already exist in the album. If it does, terminate.
	SELECT @RowCount = COUNT(*)
	FROM ALBUM_SONGS
	WHERE	
		Album_SongID = 
							(
								SELECT Album_SongID
								FROM ALBUM_SONGS
								WHERE SongName LIKE @SongName
							) 
		AND

		AlbumID =	
							(
							SELECT AlbumID
							FROM ALBUMS
							WHERE AlbumName LIKE @Album
							)
	
	
	IF(@RowCount != 0)
		BEGIN
		PRINT 'The song ' + @SongName + ' already exists in the album ' + @Album
		RETURN
	END


	-- Add the song:
	SET @AlbumID = (
					SELECT AlbumID
					FROM ALBUMS
					WHERE AlbumName LIKE @Album
					)
	INSERT INTO ALBUM_SONGS
	VALUES (@SongName, @Duration, @AlbumID)

	RETURN
END