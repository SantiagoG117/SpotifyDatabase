-- Store procedure Add a new single

CREATE PROCEDURE Add_Single
--Parameters 
(
	@SingleName		VARCHAR(50),
	@DateOfRelease	DATE,
	@Artist			VARCHAR(100),
	@RecordLabel	VARCHAR(50)
)
AS
BEGIN 
	--Declare local variables
	DECLARE @RowCount		INT
	DECLARE @ArtistID		INT
	Declare	@RecordLabelID	INT

	-- Check if the Artist exists in the database. If it does not. Terminate
	SELECT @RowCount = COUNT(*)
	FROM ARTISTS
	WHERE Name LIKE @Artist
	IF(@RowCount = 0)
		BEGIN
		PRINT 'The artist ' + @Artist + ' does not exist. Please add it before adding a new album.'
		RETURN
	END

	-- 
	
	--Check if the database already holds the single for the given artist. If it does, terminate
	SELECT @RowCount = COUNT(*)
	FROM SINGLE_SONGS
	WHERE 
		SingleID = (
						SELECT SingleID
						FROM SINGLE_SONGS
						WHERE SingleName LIKE @SingleName
					)
		AND
		ArtistID = (
					SELECT ArtistID
					FROM ARTISTS
					WHERE Name LIKE @Artist
					)

	IF(@RowCount !=0)
		BEGIN
		PRINT 'The single ' + @SingleName + ' for the artist ' + @Artist +' already exists'
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

	--Add the single
	SET @ArtistID = (
						SELECT ArtistID
						FROM ARTISTS
						WHERE Name LIKE @Artist
					)

	SET @RecordLabelID = (
							SELECT RecordLabelID
							FROM RECORD_LABELS
							WHERE Name LIKE @RecordLabel
						  )

	INSERT INTO SINGLE_SONGS
	VALUES (@SingleName, @DateOfRelease, @ArtistID, @RecordLabelID)

	RETURN 
END