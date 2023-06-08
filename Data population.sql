use[Spotify Database];

INSERT INTO ARTISTS (Name)
VALUES
	('Elvis Presley'),
	('The Beatles'),
	('Michael Jackson'),
	('Bob Dylan'),
	('Jimi Hendrix'),
	('Aretha Franklin'),
	('Queen'),
	('David Bowie'),
	('The Rolling Stones'),
	('Johnny Cash'),
	('Ella Fitzgerald'),
	('James Brown'),
	('Led Zeppelin'),
	('The Supremes'),
	('Ray Charles'),
	('Nat King Cole'),
	('Stevie Wonder'),
	('Marvin Gaye'),
	('Frank Zappa'),
	('Diana Ross');

INSERT INTO GENRES (Name)
VALUES
	('Rock'),
	('Pop'),
	('R&B'),
	('Folk'),
	('Blues'),
	('Soul'),
	('Funk'),
	('Reggae'),
	('Jazz'),
	('Country');

INSERT INTO GENRES_ARTISTS (GenreID, ArtistID)
VALUES
	-- Rock
	(1, 1), -- Elvis Presley
	(1, 2), -- The Beatles
	(1, 7), -- Queen
	(1, 8), -- David Bowie
	(1, 9), -- The Rolling Stones
	(1, 12), -- Led Zeppelin

	-- Pop
	(2, 1), -- Elvis Presley
	(2, 2), -- The Beatles
	(2, 3), -- Michael Jackson

	-- R&B
	(3, 6), -- Aretha Franklin
	(3, 16), -- Nat King Cole
	(3, 17), -- Stevie Wonder

	-- Folk
	(4, 4), -- Bob Dylan

	-- Blues
	(5, 15), -- Ray Charles

	-- Soul
	(6, 6), -- Aretha Franklin
	(6, 16), -- Nat King Cole
	(6, 18), -- Marvin Gaye

	-- Funk
	(7, 12), -- Led Zeppelin

	-- Reggae
	(8, 11), -- Johnny Cash

	-- Jazz
	(9, 11), -- Johnny Cash
	(9, 12), -- Led Zeppelin
	(9, 13), -- The Supremes
	(9, 15), -- Ray Charles
	(9, 16), -- Nat King Cole

	-- Country
	(10, 10), -- Johnny Cash
	(10, 19), -- Frank Zappa
	(10, 20); -- Diana Ross

INSERT INTO RECORD_LABELS (Name)
VALUES
	('Sony Music Entretainment'), --1
	('RCA Victor'),--2
	('Apple Corps'),--3
	('MJJ Productions Inc'),--4
	('Sony Music Entretainment'), --5
	('Atlantic Recording Corp'), --6
	('Universal International Music BV'), --7
	('Parlophone Records Ltd'), --8
	('ABKCO Music & Records Inc.'),--9
	('American Recordings'),--10
	('UMG Recordings Inc.'),--11
	('Motown Records'),--12
	('Capitol Records') --13
;


-- Albums:

-- Elvis Presley DONE

INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Elvis Presley', '1956-03-23', 1, 1),
    ('Elvis', '1956-10-19', 1, 2),
    ('Loving You', '1957-07-01', 1, 2);

-- The Beatles DONE
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Please Please Me', '1963-03-22', 2, 3),
    ('With the Beatles', '1963-11-22', 2, 3),
    ('A Hard Day''s Night', '1964-07-10', 2, 3);

-- Michael Jackson DONE
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Off the Wall', '1979-08-10', 3, 4),
    ('Thriller', '1982-11-30', 3, 4),
    ('Bad', '1987-08-31', 3, 4);

-- Bob Dylan DONE
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('The Freewheelin'' Bob Dylan', '1963-05-27', 4, 5),
    ('The Times They Are a-Changin', '1964-01-13', 4, 5),
    ('Bringing It All Back Home', '1965-03-22', 4, 5);

-- Jimi Hendrix DONE
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Are You Experienced', '1967-05-12', 5, 5),
    ('Axis: Bold as Love', '1967-12-01', 5, 5),
    ('Electric Ladyland', '1968-10-16', 5, 5);

-- Aretha Franklin DONE
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('I Never Loved a Man the Way I Love You', '1967-03-10', 6, 6),
    ('Lady Soul', '1968-01-22', 6, 6),
    ('Aretha Now', '1968-06-14', 6, 6);

-- Queen DONE
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('A Night at the Opera', '1975-11-21', 7, 7),
    ('Sheer Heart Attack', '1974-11-08', 7, 7),
    ('Jazz', '1978-11-10', 7, 7);

-- David Bowie DONE
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Heroes', '1977-01-01', 8, 8),
    ('Hunky Dory', '1971-12-17', 8, 8),
    ('Aladdin Sane', '1973-04-13', 8, 8);

-- The Rolling Stones DONE
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Let It Bleed', '1969-12-05', 9, 9),
    ('Sticky Fingers', '1971-04-23', 9, 7),
    ('Exile on Main St.', '1972-05-12', 9, 7);

-- Johnny Cash DONE
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('At Folsom Prison', '1968-05-01', 10, 1),
    ('American Recordings', '1994-04-26', 10, 10),
    ('The Essential Johnny Cash', '2002-02-12', 10, 5);

-- Ella Fitzgerald DONE
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Ella Fitzgerald Sings the Cole Porter Songbook', '1956-02-07', 11, 11),
    ('Porgy and Bess', '1959-04-01', 11, 11),
    ('Ella Fitzgerald Sings the Irving Berlin Songbook', '1958-03-03', 11, 11);

-- James Brown DONE
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Live at the Apollo', '1963-05-01', 12, 11),
    ('In the Jungle Groove', '1986-08-25', 12, 11),
    ('Get on the Good Foot', '1972-10-27', 12, 11);

-- Led Zeppelin DONE
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Led Zeppelin', '1969-01-12', 13, 6),
    ('Led Zeppelin II', '1969-10-22', 13, 6),
    ('Led Zeppelin IV', '1971-11-08', 13, 6);

-- The Supremes
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Where Did Our Love Go', '1964-08-31', 14, 12),
    ('More Hits by The Supremes', '1965-07-23', 14, 12),
    ('The Supremes A'' Go-Go', '1966-08-25', 14, 12);

-- Ray Charles
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Ray Charles', '1957-07-01', 15, 6),
    ('The Genius of Ray Charles', '1959-10-17', 15, 6),
    ('Modern Sounds in Country and Western Music', '1962-04-01', 15, 6);

-- Nat King Cole
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Love Is the Thing', '1957-11-11', 16, 13),
    ('Unforgettable', '1954-02-01', 16, 13),
    ('The Christmas Song', '1962-01-01', 16, 13);

-- Stevie Wonder
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Talking Book', '1972-10-27', 17, 12),
    ('Innervisions', '1973-08-03', 17, 12),
    ('Songs in the Key of Life', '1976-09-28', 17, 12);

-- Marvin Gaye
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('What''s Going On', '1971-05-21', 18, 12),
    ('Let''s Get It On', '1973-08-28', 18, 12),
    ('I Want You', '1976-03-16', 18, 12);

-- Frank Zappa
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Sheik Yerbouti', '1979-03-03', 19, 11),
    ('Hot Rats', '1969-10-10', 19, 11),
    ('Apostrophe', '1974-03-22',19,11);

--Diana Ross
INSERT INTO ALBUMS (AlbumName, YearOfRelease, ArtistID, RecordLabelID)
VALUES
	('Swept Away','1985-09-13', 20, 8),
	('Take Me Higher', '1995-09-05',20,8),
	('Red Hot Rhythm and Blues','1987-05-08',20,8);



-- Album_Songs:
-- Inserting data into ALBUM_SONGS table
-- Inserting data into ALBUM_SONGS table

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Blue Suede Shoes', '02:00',1),
       ('I Got a Woman', '02:26',1),
       ('I''m Counting on You', '02:24',1),
       ('One-Sided Love Affair', '02:10',1),
       ('I Love You Because', '02:44',1),
       ('Just Because', '02:34',1),
       ('Tutti Frutti', '01:59',1),
       ('Trying to Get to You', '02:34',1),
       ('I''ll Never Let You Go (Little Darlin)', '02:24',1),
       ('Blue Moon', '02:42',1),
       ('Money Honey', '02:35',1),
       ('Heartbreak Hotel', '02:10',1),
       ('I Was the One', '02:34',1),
       ('Lawdy, Miss Clawdy', '02:10',1),
       ('Shake, Rattle and Roll', '02:29',1),
       ('My Baby Left Me', '02:12',1),
       ('I Want You, I Need You, I Love You', '02:40',1);

select* from ALBUM_SONGS

