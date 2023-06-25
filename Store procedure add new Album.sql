-- Store procedure: Add a new Album

CREATE PROCEDURE Add_Album
--Parameters
(
	@AlbumName		VARCHAR(50),
	@Artist			VARCHAR(100),
	@RecordLabel	VARCHAR(50)
)

AS
BEGIN
	--Declare local variables:
	DECLARE @RowCount		INT
	DECLARE @ArtistID		INT
	DECLARE @RecordLabelID	INT

	--Check if the Artist exists in the database. If it does not, terminate
	SELECT @RowCount = COUNT(*)
	FROM ARTISTS
	WHERE Name LIKE @Artist
	IF(@RowCount = 0)
		BEGIN
		PRINT 'The artist ' + @Artist + ' does not exist. Please add it before adding a new album.'
		RETURN
	END

	--Check if the Database already holds the Album. If it does, terminate.
	SELECT @RowCount = COUNT(*)
	FROM ALBUMS
	WHERE AlbumName Like @AlbumName
	IF(@RowCount != 0)
		BEGIN
		PRINT 'The album ' + @AlbumName + ' already exists.'
		RETURN
	END

	-- Check if the Record Label exists in the database. If it does not, terminate.
	SELECT @RowCount = COUNT(*)
	FROM RECORD_LABELS
	WHERE Name LIKE @RecordLabel
	IF(@RowCount = 0)
		BEGIN
		PRINT 'The record label ' + @RecordLabel + ' does not exist. Please add it before adding the new album.'
		RETURN
	END
		

	-- Add the album with its DateOfRelease, Artist and Record Label
	
	SET @ArtistID =	(
						SELECT ArtistID
						FROM ARTISTS
						WHERE Name LIKE @Artist
					)
	
	SET @RecordLabelID = (
							SELECT RecordLabelID
							FROM RECORD_LABELS
							WHERE Name LIKE @RecordLabel
						  )
	INSERT INTO ALBUMS
	VALUES (@AlbumName, CAST(GETDATE() AS DATE), @ArtistID, @RecordLabelID)
	RETURN

END
	