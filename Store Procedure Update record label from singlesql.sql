-- Store Procedure: Modify the record label of a given single

CREATE PROCEDURE Modify_Record_Label_of_Single
--Parameters
(
	@RecordLabelName	Varchar(50),
	@Single				VARCHAR(50)
)
AS
BEGIN
	-- Declare local variables
	DECLARE @RowCount		INT
	DECLARE @SingleID		INT
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

	-- Check if the Database holds the Single
	SELECT @RowCount = COUNT(*)
	FROM SINGLE_SONGS
	WHERE SingleName LIKE @Single
	IF(@RowCount = 0)
		BEGIN
		PRINT 'The Single ' + @Single + ' does not exist.'
		RETURN
	END

	SET @SingleID = (
						SELECT SingleID
						FROM SINGLE_SONGS
						WHERE SingleName LIKE @Single
					)
	
	SET @RecordLabelID = (
						SELECT RecordLabelID
						FROM RECORD_LABELS
						WHERE Name LIKE @RecordLabelName
					)

	
	UPDATE SINGLE_SONGS
	SET RecordLabelID = @RecordLabelID
	WHERE SingleID = @SingleID

END