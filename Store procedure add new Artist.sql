-- Store procedure: Add a new Artist

CREATE PROCEDURE Add_Artist
-- Parameters:
(
	@ArtistName	VARCHAR(100),
	@GenreName	VARCHAR(50)

)
AS
BEGIN
	-- Declare local variables
	DECLARE @RowCount		INT
	DECLARE	@GenreID		INT
	DECLARE @ArtistID		INT
	
	-- Check if the Database already contains the Artist
	SELECT	@RowCount = COUNT(*)
	FROM	ARTISTS
	WHERE	Name LIKE @ArtistName
	IF(@RowCount != 0)
		BEGIN
		PRINT 'Artist ' + @ArtistName + ' already exists'
		RETURN
	END
	-- If the Artist does not exist, add it
	INSERT INTO ARTISTS
	VALUES (@ArtistName)


	-- Add the Artist and Genre to ARTISTS_GENRES

	-- Store the Primary Key of the new Artist in a variable:
	SET @ArtistID = SCOPE_IDENTITY()

	-- Check if the Genre inputed already exist in the database
	SELECT	@RowCount = COUNT(*)
	FROM	GENRES
	WHERE	Name LIKE @GenreName
	-- If the Genre already exist add the Primary Key of the new Artist and the PK of the Genre to GENRE_ARTISTS
	IF(@RowCount != 0)
		BEGIN
		SET @GenreID = 
					(
					SELECT	GenreID
					FROM	GENRES
					WHERE	Name LIKE @GenreName
					)
		
		INSERT INTO GENRES_ARTISTS 
		VALUES(@GenreID, @ArtistID)
		RETURN
	END

	-- If the genre does not exist, add it to GENRES and then add both the Artist and the Genre to Genre_Artists
	INSERT INTO GENRES
	VALUES(@GenreName)

	SET @GenreID = SCOPE_IDENTITY()
	INSERT INTO GENRES_ARTISTS
	VALUES(@GenreID, @ArtistID)
	RETURN
END