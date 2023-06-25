-- Store procedure: Get all the Artist of a given Genre

CREATE PROCEDURE Get_Artists_by_Genre
-- Parameters:
(
	@GenreName		VARCHAR(50)
)
AS
BEGIN
	-- Declare local variables:
	DECLARE @GenreID	INT
	DECLARE @RowCount	INT

	-- Set the value of the GenreID variable
	set @GenreID =
				(
				SELECT GenreID
				FROM GENRES
				WHERE GenreID = 
								(
								SELECT GenreID
								FROM GENRES
								WHERE Name LIKE @GenreName
								)
				)

	-- Check if the Database Holds the inputed Genre
	SELECT	@RowCount = COUNT(*)
	FROM	GENRES
	WHERE	GenreID = @GenreID

	IF (@RowCount = 0)
		BEGIN
			-- The Album does not exist in the database
			PRINT 'The genre ' + @GenreName + ' does not exist in the database'
			RETURN
		END

	-- If the Genre exist, return the all the artist that belong to that genre
	Select
		ARTISTS.Name as Artist
	From ARTISTS
	JOIN GENRES_ARTISTS ON ARTISTS.ArtistID = GENRES_ARTISTS.ArtistID
	JOIN GENRES ON GENRES_ARTISTS.GenreID	= GENRES.GenreID
	WHERE GENRES_ARTISTS.GenreID = 1

	RETURN
END