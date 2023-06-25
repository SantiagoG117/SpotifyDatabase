USE[Spotify Database]

-- Strong tables
CREATE TABLE GENRES (
	-- ColumnName	DataType		OptionalConstraints	
	GenreID			INT				PRIMARY KEY IDENTITY(1,1),
	Name			Varchar(75)		NOT NULL
);

CREATE TABLE ARTISTS (
	-- ColumnName	DataType		OptionalConstraints
	ArtistID		INT				PRIMARY KEY IDENTITY(1,1),
	Name			VARCHAR(100)	NOT NULL
);

CREATE TABLE USERS (
	-- ColumnName	DataType		OptionalConstraints
	UserID			INT				PRIMARY KEY IDENTITY(1,1),
	UserName		Varchar(50)		UNIQUE NOT NULL,
	Password		VARCHAR(25)		NOT NULL,
	FirstName		VARCHAR(50)		NOT NULL,
	LastName		VARCHAR(50)		NOT NULL
);

CREATE TABLE RECORD_LABELS(
	-- ColumnName	DataType		OptionalConstraints
	RecordLabelID	INT				PRIMARY KEY IDENTITY(1,1),
	Name			VARCHAR(50)		NOT NULL
);

-- Child tables
CREATE TABLE ALBUMS (
	-- ColumnName	DataType					OptionalConstraints
	AlbumID			INT							PRIMARY KEY IDENTITY(1,1),
	AlbumName		VARCHAR(50)					NOT NULL,
	DateOfRelease	DATE						NOT NULL,

	-- Foreign Keys
	ArtistID		INT							NOT NULL,
	CONSTRAINT		FK_ALBUMS_ARTISTS			FOREIGN KEY(ArtistID)
		REFERENCES	ARTISTS(ArtistID)
			ON UPDATE NO ACTION
			ON DELETE NO ACTION,

	RecordLabelID	INT							NOT NULL
	CONSTRAINT		FK_ALBUMS_RECORD_LABELS		FOREIGN KEY(RecordLabelID)
		REFERENCES	RECORD_LABELS(RecordLabelID)
		ON UPDATE	CASCADE 
		ON DELETE	NO ACTION
);

CREATE TABLE ALBUM_SONGS(
	-- ColumnName	DataType					OptionalConstraints
	Album_SongID	INT							PRIMARY KEY IDENTITY(1,1),
	SongName		VARCHAR(50)					NOT NULL,
	Duration		CHAR(5)						NOT NULL,			

	-- Foreign Key
	AlbumID			INT							NOT NULL,
	CONSTRAINT		FK_ALBUM_SONGS_ALBUMS		FOREIGN KEY(AlbumID)
		REFERENCES	ALBUMS(AlbumID)
			ON UPDATE NO ACTION
			ON DELETE NO ACTION
);

CREATE TABLE SINGLE_SONGS(
	-- ColumnName	DataType						OptionalConstraints
	SingleID		INT								PRIMARY KEY IDENTITY(1,1),
	SingleName		VARCHAR(50)						NOT NULL,
	DateOfRelease	DATE							NOT NULL,

	-- Foreign Key
	ArtistID		INT								NOT NULL,
	CONSTRAINT		FK_SINGLE_SONGS_ARTISTS			FOREIGN KEY(ArtistID)
		REFERENCES	ARTISTS(ArtistID)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION,

	RecordLabelID	INT								NOT NULL,
	CONSTRAINT		FK_SINGLE_SONGS_RECORD_LABELS	FOREIGN KEY(RecordLabelID)
		REFERENCES	RECORD_LABELS(RecordLabelID)
			ON UPDATE	CASCADE -- The rights on a given single may change over time.
			ON DELETE	NO ACTION
	);

CREATE TABLE PLAYLISTS (
	-- ColumnName	DataType					OptionalConstraints
	PlaylistID		INT							PRIMARY KEY IDENTITY(1,1),
	PlaylistName	VARCHAR (50)				NOT NULL,
	DateCreated		DATE						NOT NULL,

	-- Foreign Keys
	OwnerID			INT							NOT NULL,
	CONSTRAINT		FK_PLAYLISTS_USERS			FOREIGN KEY(OwnerID)
		REFERENCES USERS(UserID)
			ON UPDATE NO ACTION
			ON DELETE CASCADE
);

-- Intersection tables
CREATE TABLE GENRES_ARTISTS(
	-- ColumnName	DataType		OptionalConstraints	
	GenreID			INT				NOT NULL,
	ArtistID		INT				NOT NULL,

	-- Create the compound PK:
	PRIMARY KEY(GenreID, ArtistID),

	-- Foreign Keys
	CONSTRAINT fk_GENRES_ARTISTS	FOREIGN KEY	(GenreID)
			REFERENCES GENRES(GenreID)
			ON UPDATE NO ACTION
			ON DELETE NO ACTION,

	CONSTRAINT fk_ARTISTS_GENRES	FOREIGN KEY	(ArtistID)
			REFERENCES ARTISTS(ArtistID)
			ON UPDATE NO ACTION
			ON DELETE NO ACTION
);

CREATE TABLE PLAYLIST_ALBUM_SONGS(
	-- ColumnName	DataType			OptionalConstraints	
	PlaylistID		INT					NOT NULL,
	Album_SongID	INT					NOT NULL,
	DateAdded		DATE				NOT NULL,

	-- Create the compound PK:
	PRIMARY KEY(PlayListID,Album_SongID),

	-- Foreign Keys
	CONSTRAINT	fk_PlaylistID_Album_Song_ID
	FOREIGN KEY	(PlaylistID)
	REFERENCES PLAYLISTS (PlaylistID)
		ON UPDATE NO ACTION
		ON DELETE CASCADE, --If a Playlist is removed all its album_songs should be removed from the table

	CONSTRAINT	fk_Album_Song_ID_PlaylistID
	FOREIGN KEY	(Album_SongID)	
	REFERENCES	ALBUM_SONGS(Album_SongID)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION
);

CREATE TABLE PLAYLIST_SINGLES(
	-- ColumnName	DataType			OptionalConstraints	
	PlaylistID		INT					NOT NULL,
	SingleID		INT					NOT NULL,
	DateAdded		DATE				NOT NULL,

	-- Create the compound PK:
	PRIMARY KEY(PlaylistID, SingleID),

	-- Foreign Keys
	CONSTRAINT fk_PlaylistID_SingleID
	FOREIGN KEY(PlaylistID)
	REFERENCES PLAYLISTS(PlaylistID)
		ON UPDATE NO ACTION
		ON DELETE CASCADE,  --If a Playlist is removed all its songs should be removed from the table
	
	CONSTRAINT fk_SingleID_PlaylistID
	FOREIGN KEY(SingleID)
	REFERENCES SINGLE_SONGS(SingleID)
		ON UPDATE NO ACTION
		ON DELETE NO ACTION
);
