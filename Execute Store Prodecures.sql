USE [Spotify Database]
GO
-- EXEC Get_albums_of_artist	@ArtistName = 'Elvis Presley'
-- EXEC Get_songs_of_album		@AlbumName = 'Loving You'
-- EXEC	Get_Singles_of_artist	@ArtistName = 'Elvis Presley'
-- EXEC	Get_Artists_by_Genre	@GenreName = 'Rock'
-- EXEC	Add_Genre				@GenreName = 'Test'
-- EXEC Add_Artist				@ArtistName='Taylor Swift', @GenreName = 'Taylor Genre'
-- EXEC Add_Record_Label		@RecordLabelName = 'New Record Label'
-- EXEC	Add_Album				@AlbumName = 'Unkown', @DateOfRelease = '2023-06-12', @Artist = 'Queen', @RecordLabel = 'Unkown'
-- EXEC Add_song_to_album		@SongName = 'New Song', @Duration = '02:00', @Album = 'Bad'
-- EXEC	Add_Single				@SingleName = 'New Song', @DateOfRelease = '2023-06-12', @Artist = 'Queen', @RecordLabel = 'Queen Record Label'
-- EXEC Add_User				@UserName = 'SantiagoGP117', @Password = 'Password', @FirstName	= 'Santiago', @LastName	= 'Garcia'	
-- EXEC Add_Playlist			@PlayListName = 'New Playlist', @UserName = 'SantiagoGP117'
-- EXEC add_song_to_Playlist	@SongName = 'Blue Suede Shoes', @Playlist = 'New Playlist'
-- EXEC Get_songs_from_Playlist @Playlist = 'New Playlist'
-- EXEC Delete_Playlist @Playlist = 'New Playlist'
-- EXEC Delete_song_from_Playlist @SongName = 'Blue Suede Shoes', @Playlist = 'New Playlist'
-- EXEC Modify_Record_Label_of_Album @RecordLabelName = 'RCA Victor', @Album = 'Elvis Presley'
-- EXEC Modify_Record_Label_of_Single @RecordLabelName	= 'RCA Victor' , @Single =  'A ittle Less Conversation'
-- EXEC Delete_User @UserName = 'SantiagoGP117'


GO
