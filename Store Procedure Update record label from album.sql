-- Store Procedure: Modify the record of a given album

CREATE PROCEDURE Modify_Record_Label_of_Album
--Parameters
(
	@RecordLabelName	Varchar(50),
	@Album				VARCHAR(50)
)
AS
BEGIN
	-- Declare local variables
	DECLARE @RowCount		INT
	DECLARE @AlbumID		INT
	DECLARE @RecordLabelID	INT

	-- Check if the Database holds the Record Lable
	SELECT @RowCount = COUNT(*)
	FROM RECORD_LABELS
	WHERE Name LIKE @RecordLabelName

	IF(@RowCount = 0)
		BEGIN
		PRINT 'The Record Label ' + @RecordLabelName + ' does not exist.'
		RETURN
	END

	-- Check if the Database holds the Album
	SELECT @RowCount = COUNT(*)
	FROM ALBUMS
	WHERE AlbumName LIKE @Album
	IF(@RowCount = 0)
		BEGIN
		PRINT 'The album ' + @Album + ' does not exist.'
		RETURN
	END

	SET @AlbumID = (
						SELECT AlbumID
						FROM ALBUMS
						WHERE AlbumName LIKE @Album
					)
	
	SET @RecordLabelID = (
						SELECT RecordLabelID
						FROM RECORD_LABELS
						WHERE Name LIKE @RecordLabelName
					)

	
	UPDATE ALBUMS
	SET RecordLabelID = @RecordLabelID
	WHERE AlbumID = @AlbumID

END