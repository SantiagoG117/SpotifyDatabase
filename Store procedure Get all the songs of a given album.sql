-- Store procedure: Get all the songs of a given album

CREATE PROCEDURE Get_songs_of_album
-- Parameters:
(
	@AlbumName		VARCHAR(50)
)
AS
BEGIN
	-- Declare local variables:
	DECLARE @AlbumID	INT
	DECLARE @RowCount	INT

	-- Set the value of the AlbumID variable
	set @AlbumID = 
		(
		SELECT AlbumID
		FROM ALBUMS
		WHERE AlbumID = 
					(
					SELECT AlbumID
					from ALBUMS
					WHERE AlbumName LIKE @AlbumName
					)
		)

	-- Check if the Database Holds the inputed album
	SELECT	@RowCount = COUNT(*)
	FROM	ALBUMS
	WHERE	AlbumID = @AlbumID

	IF (@RowCount = 0)
		BEGIN
			-- The Album does not exist in the database
			PRINT 'The album ' + @AlbumName + ' does not exist in the database'
			RETURN
		END

	-- If the album exist, return the all its songs stored in the database
	SELECT
		SongName
	FROM ALBUM_SONGS
	WHERE AlbumID = @AlbumID

	RETURN
END

select* from ALBUM_SONGS