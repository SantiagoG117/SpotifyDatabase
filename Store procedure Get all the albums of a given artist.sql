-- Store procedure: Get all the albums of a given artist

CREATE PROCEDURE Get_albums_of_artist 
-- Parameters:
(
	@ArtistName		VARCHAR(50)
)
AS
BEGIN
	-- Declare local variables:
	DECLARE @ArtistID	INT
	DECLARE @RowCount	INT

	-- Set the value of local variables
	set @ArtistID = 
		(
		SELECT ArtistID
		FROM ARTISTS
		WHERE ArtistID = 
					(
					SELECT ArtistID
					from ARTISTS
					WHERE Name LIKE @ArtistName
					)
		)
	-- Check if the Database Holds the inputed artist
	SELECT	@RowCount = COUNT(*)
	FROM	ARTISTS
	WHERE	ArtistID = @ArtistID

	IF (@RowCount = 0)
		BEGIN
			-- The artist does not exist in the database
			PRINT 'The artist ' + @ArtistName + ' does not exist in the database'
			RETURN
		END

	-- If the Artist exist, return the name of all its albums stored in the database
	SELECT 
		AlbumName
	FROM ALBUMS
	WHERE ArtistID = @ArtistID

	RETURN
END

