-- Store procedure: Add new RecordLabel

CREATE PROCEDURE Add_Record_Label
-- Parameters:
(
	@RecordLabelName	Varchar(50)
)

AS
BEGIN
	-- Declare local variables
	DECLARE @RowCount	INT

	-- Check if the Database already holds the Record Lable name
	SELECT @RowCount = COUNT(*)
	FROM RECORD_LABELS
	WHERE Name LIKE @RecordLabelName

	IF(@RowCount != 0)
		BEGIN
		PRINT 'The Record Label ' + @RecordLabelName + ' already exist.'
		RETURN
	END

	--If the Record Label does not exists, add it
	INSERT INTO RECORD_LABELS
	VALUES (@RecordLabelName)
	RETURN
END