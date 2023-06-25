-- Store procedure: Add a new Genre

CREATE PROCEDURE Add_Genre
-- Parameters:
(
	@GenreName	VARCHAR(50)
)
AS
BEGIN
	-- Declare local variables
	DECLARE @RowCount	INT
	
	-- Check if the Database already holds the Genre inputted
	SELECT @RowCount = COUNT(*)
	FROM GENRES
	WHERE Name LIKE @GenreName

	IF(@RowCount != 0)
		BEGIN
		-- The Genre already exist in the database
		Print 'Genre ' + @GenreName + ' already exist.'
		RETURN
	END

	-- If the Genre does not exist, add it
	INSERT INTO GENRES
	VALUES (@GenreName)
	RETURN
END