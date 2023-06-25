-- Store procedure: Get all the songs in a given PlayList

CREATE PROCEDURE Get_songs_from_Playlist
-- Parameters
	(
		@Playlist	VARCHAR(50)
	)
AS
BEGIN
	-- Declare local variables
	DECLARE	@RowCount	INT
	DECLARE @PlaylistID	INT

	-- Check if the Playlist exist in the database
	SELECT @RowCount = COUNT(*)
	FROM PLAYLISTS
	WHERE PlaylistID = (
						SELECT PlaylistID
						FROM PLAYLISTS
						WHERE PlaylistName LIKE @Playlist
						)
	IF (@RowCount = 0)
		BEGIN
		PRINT 'The Playlist ' + @Playlist + ' does not exist.'
		RETURN
	END

	-- Get the Primary Key of the Playlist
	SET @PlaylistID = (
						SELECT PlaylistID
						FROM PLAYLISTS
						WHERE PlaylistName LIKE @Playlist
					   )


	-- Join the tables and return the values
	SELECT
		ALBUM_SONGS.SongName AS 'Album songs',
		ALBUMS.AlbumName AS 'Album name',
		SINGLE_SONGS.SingleName AS 'Singles',
		ARTISTS.Name AS 'Artist Name'
	FROM PLAYLISTS 
	-- Playlists to Albums
	JOIN PLAYLIST_ALBUM_SONGS ON PLAYLISTS.PlaylistID = PLAYLIST_ALBUM_SONGS.PlaylistID
	JOIN ALBUM_SONGS ON PLAYLIST_ALBUM_SONGS.Album_SongID = ALBUM_SONGS.Album_SongID
	JOIN ALBUMS ON ALBUM_SONGS.AlbumID = ALBUMS.AlbumID
	-- Playlists to Singles branch
	JOIN PLAYLIST_SINGLES ON PLAYLISTS.PlaylistID = PLAYLIST_SINGLES.PlaylistID
	JOIN SINGLE_SONGS ON PLAYLIST_SINGLES.SingleID = SINGLE_SONGS.SingleID
	JOIN ARTISTS ON SINGLE_SONGS.ArtistID = ARTISTS.ArtistID
	WHERE PLAYLISTS.PlaylistID = 3
	
END