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
	('Marvin Gaye');

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
	(10, 10); -- Johnny Cash

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
	('Capitol Records'), --13
	('Big Machine Label Group'), --14
	('Tangerine Records') --15
;




-- Albums:

-- Elvis Presley 

INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Elvis Presley', '1956-03-23', 1, 1),
    ('Elvis', '1956-10-19', 1, 2),
    ('Loving You', '1957-07-01', 1, 2);

-- The Beatles 
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Please Please Me', '1963-03-22', 2, 3),
    ('With the Beatles', '1963-11-22', 2, 3),
    ('A Hard Day''s Night', '1964-07-10', 2, 3);

-- Michael Jackson
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Off the Wall', '1979-08-10', 3, 4),
    ('Thriller', '1982-11-30', 3, 4),
    ('Bad', '1987-08-31', 3, 4);

-- Bob Dylan
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('The Freewheelin'' Bob Dylan', '1963-05-27', 4, 5),
    ('The Times They Are a-Changin', '1964-01-13', 4, 5),
    ('Bringing It All Back Home', '1965-03-22', 4, 5);

-- Jimi Hendrix 
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Are You Experienced', '1967-05-12', 5, 5),
    ('Axis: Bold as Love', '1967-12-01', 5, 5),
    ('Electric Ladyland', '1968-10-16', 5, 5);

-- Aretha Franklin 
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('I Never Loved a Man the Way I Love You', '1967-03-10', 6, 6),
    ('Lady Soul', '1968-01-22', 6, 6),
    ('Aretha Now', '1968-06-14', 6, 6);

-- Queen
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('A Night at the Opera', '1975-11-21', 7, 7),
    ('Sheer Heart Attack', '1974-11-08', 7, 7),
    ('Jazz', '1978-11-10', 7, 7);

-- David Bowie 
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Heroes', '1977-01-01', 8, 8),
    ('Hunky Dory', '1971-12-17', 8, 8),
    ('Aladdin Sane', '1973-04-13', 8, 8);

-- The Rolling Stones
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Let It Bleed', '1969-12-05', 9, 9),
    ('Sticky Fingers', '1971-04-23', 9, 7),
    ('Exile on Main St.', '1972-05-12', 9, 7);

-- Johnny Cash
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('At Folsom Prison', '1968-05-01', 10, 1),
    ('American Recordings', '1994-04-26', 10, 10),
    ('The Essential Johnny Cash', '2002-02-12', 10, 5);

-- Ella Fitzgerald
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Ella Fitzgerald Sings the Cole Porter Songbook', '1956-02-07', 11, 11),
    ('Porgy and Bess', '1959-04-01', 11, 11),
    ('Ella Fitzgerald Sings the Irving Berlin Songbook', '1958-03-03', 11, 11);

-- James Brown
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Live at the Apollo', '1963-05-01', 12, 11),
    ('In the Jungle Groove', '1986-08-25', 12, 11),
    ('Get on the Good Foot', '1972-10-27', 12, 11);

-- Led Zeppelin 
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Led Zeppelin', '1969-01-12', 13, 6),
    ('Led Zeppelin II', '1969-10-22', 13, 6),
    ('Led Zeppelin IV', '1971-11-08', 13, 6);

-- The Supremes
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Where Did Our Love Go', '1964-08-31', 14, 12),
    ('More Hits by The Supremes', '1965-07-23', 14, 12),
    ('The Supremes A'' Go-Go', '1966-08-25', 14, 12);

-- Ray Charles
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Ray Charles', '1957-07-01', 15, 6),
    ('The Genius of Ray Charles', '1959-10-17', 15, 6),
    ('Modern Sounds in Country and Western Music', '1962-04-01', 15, 6);

-- Nat King Cole
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Love Is the Thing', '1957-11-11', 16, 13),
    ('Unforgettable', '1954-02-01', 16, 13),
    ('The Christmas Song', '1962-01-01', 16, 13);

-- Stevie Wonder
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('Talking Book', '1972-10-27', 17, 12),
    ('Innervisions', '1973-08-03', 17, 12),
    ('Songs in the Key of Life', '1976-09-28', 17, 12);

-- Marvin Gaye
INSERT INTO ALBUMS (AlbumName, DateOfRelease, ArtistID, RecordLabelID)
VALUES
    ('What''s Going On', '1971-05-21', 18, 12),
    ('Let''s Get It On', '1973-08-28', 18, 12),
    ('I Want You', '1976-03-16', 18, 12);



-- Elvis Album_Songs:


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

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Rip It Up', '01:52',2),
       ('Love Me', '2:43',2),
       ('When my Blue Moon Turns Old Again', '02:21',2),
       ('Long Tall Sally', '01:52',2),
       ('First In Line', '03:21',2),
       ('Paralized', '02:23', 2),
       ('So Glad You''re Mine', '02:20',2),
       ('Old Sheep', '04:08',2),
       ('Ready Teddy', '01:55',2),
       ('Anyplace Is Paradise', '02:25',2),
       ('How''s the World Treating You', '02:24',2),
       ('How Do You Think I Feel', '02:10',2);

INSERT INTO ALBUM_SONGS (SongName, Duration,AlbumID)
VALUES ('Mean Woman Blues', '02:16',3),
       ('(Let Me Be Your) Teddy Bear', '01:48',3),
       ('Loving You', '02:15',3),
       ('Got a Lot O'' Livin'' to Do!', '02:31',3),
       ('Lonesome Cowboy', '03:07',3),
       ('Hot Dog', '01:16',3),
       ('Party', '01:28',3),
       ('Blueberry Hill', '02:40',3),
       ('True Love', '02:07',3),
       ('Don''t Leave Me Now', '02:00',3),
       ('Have I Told You Lately That I Love You?', '02:32',3),
       ('I Need You So', '02:39',3);

-- The Beatles Album_Songs

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('I Saw Her Standing There', '02:55',4),
       ('Misery', '01:49',4),
       ('Anna (Go to Him)', '02:57',4),
       ('Chains', '02:23',4),
       ('Boys', '02:27',4),
       ('Ask Me Why', '02:24',4),
       ('Please Please Me', '02:00',4),
       ('Love Me Do', '02:22',4),
       ('P.S. I Love You', '02:02',4),
       ('Baby It''s You', '02:43',4),
       ('Do You Want to Know a Secret', '01:59',4),
       ('A Taste of Honey', '02:05',4),
       ('There''s a Place', '01:53',4),
       ('Twist and Shout', '02:33',4);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('It Won''t Be Long', '02:13',5),
       ('All I''ve Got to Do', '02:03',5),
       ('All My Loving', '02:09',5),
       ('Don''t Bother Me', '02:28',5),
       ('Little Child', '01:46',5),
       ('Till There Was You', '02:15',5),
       ('Please Mister Postman', '02:34',5),
       ('Roll Over Beethoven', '02:48',5),
       ('Hold Me Tight', '02:32',5),
       ('You Really Got a Hold on Me', '03:01',5),
       ('I Wanna Be Your Man', '01:59',5),
       ('Devil in Her Heart', '02:28',5),
       ('Not a Second Time', '02:07',5),
       ('Money (That''s What I Want)', '02:50',5);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('A Hard Day''s Night', '02:33',6),
       ('I Should Have Known Better', '02:44',6),
       ('If I Fell', '02:22',6),
       ('I''m Happy Just to Dance with You', '01:59',6),
       ('And I Love Her', '02:30',6),
       ('Tell Me Why', '02:10',6),
       ('Can''t Buy Me Love', '02:11',6),
       ('Any Time at All', '02:13',6),
       ('I''ll Cry Instead', '01:49',6),
       ('Things We Said Today', '02:35',6),
       ('When I Get Home', '02:16',6),
       ('You Can''t Do That', '02:35',6),
       ('I''ll Be Back', '02:22',6);

-- Michael Jackson Album_Songs

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Don''t Stop ''Til You Get Enough', '06:05',7),
       ('Rock with You', '03:40',7),
       ('Workin'' Day and Night', '05:14',7),
       ('Get on the Floor', '04:39',7),
       ('Off the Wall', '04:05',7),
       ('Girlfriend', '03:05',7),
       ('She''s Out of My Life', '03:38',7),
       ('I Can''t Help It', '04:29',7),
       ('It''s the Falling in Love', '03:46',7),
       ('Burn This Disco Out', '03:38',7);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Wanna Be Startin'' Somethin''', '06:03',8),
       ('Baby Be Mine', '04:20',8),
       ('The Girl Is Mine', '03:42',8),
       ('Thriller', '05:57',8),
       ('Beat It', '04:18',8),
       ('Billie Jean', '04:54',8),
       ('Human Nature', '04:06',8),
       ('P.Y.T. (Pretty Young Thing)', '03:58',8),
       ('The Lady in My Life', '04:59',8);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Bad', '04:07',9),
       ('The Way You Make Me Feel', '04:57',9),
       ('Speed Demon', '04:01',9),
       ('Liberian Girl', '03:53',9),
       ('Just Good Friends', '04:07',9),
       ('Another Part of Me', '03:55',9),
       ('Man in the Mirror', '05:19',9),
       ('I Just Can''t Stop Loving You', '04:12',9),
       ('Dirty Diana', '04:52',9),
       ('Smooth Criminal', '04:17',9),
       ('Leave Me Alone', '04:40',9);

-- Bob Dylan Album_Songs

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Blowin'' in the Wind', '02:48',10),
       ('Girl from the North Country', '03:22',10),
       ('Masters of War', '04:34',10),
       ('Down the Highway', '03:27',10),
       ('Bob Dylan''s Blues', '02:23',10),
       ('A Hard Rain''s a-Gonna Fall', '06:55',10),
       ('Don''t Think Twice, It''s All Right', '03:40',10),
       ('Bob Dylan''s Dream', '05:03',10),
       ('Oxford Town', '01:50',10),
       ('Talkin'' World War III Blues', '06:27',10),
       ('Corrina, Corrina', '02:44',10),
       ('Honey, Just Allow Me One More Chance', '02:01',10),
       ('I Shall Be Free', '04:49',10);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('The Times They Are a-Changin''', '03:16',11),
       ('Ballad of Hollis Brown', '05:06',11),
       ('With God on Our Side', '07:08',11),
       ('One Too Many Mornings', '02:39',11),
       ('North Country Blues', '04:33',11),
       ('Only a Pawn in Their Game', '03:32',11),
       ('Boots of Spanish Leather', '04:40',11),
       ('When the Ship Comes In', '03:18',11),
       ('The Lonesome Death of Hattie Carroll', '05:48',11),
       ('Restless Farewell', '05:32',11);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Subterranean Homesick Blues', '02:21',12),
       ('She Belongs to Me', '02:47',12),
       ('Maggie''s Farm', '03:55',12),
       ('Love Minus Zero/No Limit', '02:51',12),
       ('Outlaw Blues', '03:04',12),
       ('On the Road Again', '02:35',12),
       ('Bob Dylan''s 115th Dream', '06:30',12),
       ('Mr. Tambourine Man', '05:30',12),
       ('Gates of Eden', '05:42',12),
       ('It''s Alright, Ma (I''m Only Bleeding)', '07:31',12),
       ('It''s All Over Now, Baby Blue', '04:13',12);

-- Jimi Hendrix Album_Songs
INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Purple Haze', '02:51',13),
       ('Manic Depression', '03:46',13),
       ('Hey Joe', '03:30',13),
       ('Love or Confusion', '03:17',13),
       ('May This Be Love', '03:14',13),
       ('I Don''t Live Today', '03:54',13),
       ('The Wind Cries Mary', '03:21',13),
       ('Fire', '02:43',13),
       ('Third Stone from the Sun', '06:44',13),
       ('Foxey Lady', '03:19',13),
       ('Are You Experienced', '04:15',13);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('EXP', '01:55', 14),
       ('Up from the Skies', '02:55', 14),
       ('Spanish Castle Magic', '03:00', 14),
       ('Wait Until Tomorrow', '03:00', 14),
       ('Ain''t No Telling', '01:46', 14),
       ('Little Wing', '02:24', 14),
       ('If 6 Was 9', '05:32', 14),
       ('You Got Me Floatin''', '02:49', 14),
       ('Castles Made of Sand', '02:46', 14),
       ('She''s So Fine', '02:37', 14),
       ('One Rainy Wish', '03:40', 14),
       ('Little Miss Lover', '02:20', 14),
       ('Bold as Love', '04:11', 14);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('And the Gods Made Love', '01:21', 15),
       ('Have You Ever Been (To Electric Ladyland)', '02:12', 15),
       ('Crosstown Traffic', '02:25', 15),
       ('Voodoo Chile', '15:00', 15),
       ('Little Miss Strange', '02:52', 15),
       ('Long Hot Summer Night', '03:27', 15),
       ('Come On (Part I)', '04:10', 15),
       ('Gypsy Eyes', '03:43', 15),
       ('Burning of the Midnight Lamp', '03:39', 15),
       ('Rainy Day, Dream Away', '03:42', 15),
       ('1983... (A Merman I Should Turn to Be)', '13:39', 15),
       ('Moon, Turn the Tides...Gently Gently Away', '01:02', 15),
       ('Still Raining, Still Dreaming', '04:25', 15),
       ('House Burning Down', '04:33', 15),
       ('All Along the Watchtower', '04:01', 15),
       ('Voodoo Child (Slight Return)', '05:13', 15);

-- Aretha Franklin Album_Songs

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Respect', '02:29', 16),
       ('Drown in My Own Tears', '04:07', 16),
       ('I Never Loved a Man (The Way I Love You)', '02:51', 16),
       ('Soul Serenade', '02:36', 16),
       ('Don''t Let Me Lose This Dream', '02:22', 16),
       ('Baby, Baby, Baby', '02:54', 16),
       ('Dr. Feelgood (Love Is a Serious Business)', '03:22', 16),
       ('Good Times', '02:10', 16),
       ('Do Right Woman, Do Right Man', '03:16', 16),
       ('Save Me', '02:21', 16),
       ('A Change Is Gonna Come', '04:20', 16);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Chain of Fools', '02:45',17),
       ('Money Won''t Change You', '02:09',17),
       ('People Get Ready', '03:45',17),
       ('Niki Hoeky', '02:31',17),
       ('(You Make Me Feel Like) A Natural Woman', '02:45',17),
       ('Since You''ve Been Gone (Sweet Sweet Baby)', '02:25',17),
       ('Good to Me as I Am to You', '03:59',17),
       ('Come Back Baby', '02:28',17),
       ('Groovin''', '02:59',17),
       ('Ain''t No Way', '04:14',17);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Think', '02:19',18),
       ('I Say a Little Prayer', '03:32',18),
       ('See Saw', '02:42',18),
       ('Night Time Is the Right Time', '04:49',18),
       ('You Send Me', '02:29',18),
       ('You''re a Sweet Sweet Man', '02:16',18),
       ('I Take What I Want', '02:31',18),
       ('Hello Sunshine', '03:05',18),
       ('A Change', '02:18',18),
       ('I Can''t See Myself Leaving You', '03:00',18);

-- Queen Album_Songs
INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Death on Two Legs (Dedicated to...)', '03:43',19),
       ('Lazing on a Sunday Afternoon', '01:08',19),
       ('I''m in Love with My Car', '03:05',19),
       ('You''re My Best Friend', '02:52',19),
       ('39', '03:30',19),
       ('Sweet Lady', '04:03',19),
       ('Seaside Rendezvous', '02:14',19),
       ('The Prophet''s Song', '08:21',19),
       ('Love of My Life', '03:38',19),
       ('Good Company', '03:26',19),
       ('Bohemian Rhapsody', '05:55',19),
       ('God Save the Queen', '01:12',19);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Brighton Rock', '05:08',20),
       ('Killer Queen', '03:01',20),
       ('Tenement Funster', '02:49',20),
       ('Flick of the Wrist', '03:19',20),
       ('Lily of the Valley', '01:43',20),
       ('Now I''m Here', '04:15',20),
       ('In the Lap of the Gods', '03:21',20),
       ('Stone Cold Crazy', '02:16',20),
       ('Dear Friends', '01:07',20),
       ('Misfire', '01:49',20),
       ('Bring Back That Leroy Brown', '02:16',20),
       ('She Makes Me (Stormtrooper in Stilettos)', '04:08',20),
       ('In the Lap of the Gods... Revisited', '03:43',20);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Mustapha', '03:01',21),
       ('Fat Bottomed Girls', '04:16',21),
       ('Jealousy', '03:13',21),
       ('Bicycle Race', '03:01',21),
       ('If You Can''t Beat Them', '04:15',21),
       ('Let Me Entertain You', '03:01',21),
       ('Dead On Time', '03:24',21),
       ('In Only Seven Days', '02:29',21),
       ('Dreamer''s Ball', '03:30',21),
       ('Fun It', '03:29',21),
       ('Leaving Home Ain''t Easy', '03:15',21),
       ('Don''t Stop Me Now', '03:29',21),
       ('More Of That Jazz', '04:16',21);

-- David Bowie Album_Songs

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Beauty and the Beast', '03:36',22),
       ('Joe the Lion', '03:08',22),
       ('"Heroes"', '06:07',22),
       ('Sons of the Silent Age', '03:15',22),
       ('Blackout', '03:50',22),
       ('V-2 Schneider', '03:10',22),
       ('Sense of Doubt', '03:57',22),
       ('Moss Garden', '05:05',22),
       ('Neuköln', '04:34',22),
       ('The Secret Life of Arabia', '03:46',22);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Changes', '03:37',23),
       ('Oh! You Pretty Things', '03:14',23),
       ('Eight Line Poem', '02:55',23),
       ('Life on Mars?', '03:48',23),
       ('Kooks', '02:53',23),
       ('Quicksand', '05:08',23),
       ('Fill Your Heart', '03:08',23),
       ('Andy Warhol', '03:56',23),
       ('Song for Bob Dylan', '04:12',23),
       ('Queen Bitch', '03:18',23),
       ('The Bewlay Brothers', '05:22',23);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Watch That Man', '04:25',24),
       ('Aladdin Sane (1913-1938-197?)', '05:10',24),
       ('Drive-In Saturday', '04:29',24),
       ('Panic in Detroit', '04:25',24),
       ('Cracked Actor', '03:01',24),
       ('Time', '05:15',24),
       ('The Prettiest Star', '03:31',24),
       ('Let''s Spend the Night Together', '03:10',24),
       ('The Jean Genie', '04:05',24),
       ('Lady Grinning Soul', '03:54',24);

-- The Rolling Stone Album_Songs
INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Gimme Shelter', '04:31',25),
       ('Love in Vain', '04:19',25),
       ('Country Honk', '03:09',25),
       ('Live with Me', '03:33',25),
       ('Let It Bleed', '05:27',25),
       ('Midnight Rambler', '06:52',25),
       ('You Got the Silver', '02:50',25),
       ('Monkey Man', '04:12',25),
       ('You Can''t Always Get What You Want', '07:28',25);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Brown Sugar', '03:50',26),
       ('Sway', '03:52',26),
       ('Wild Horses', '05:42',26),
       ('Can''t You Hear Me Knocking', '07:15',26),
       ('You Gotta Move', '02:32',26),
       ('Bitch', '03:37',26),
       ('I Got the Blues', '04:00',26),
       ('Sister Morphine', '05:34',26),
       ('Dead Flowers', '04:03',26),
       ('Moonlight Mile', '05:56',26);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Rocks Off', '04:31',27),
       ('Rip This Joint', '02:24',27),
       ('Shake Your Hips', '02:59',27),
       ('Casino Boogie', '03:33',27),
       ('Tumbling Dice', '03:45',27),
       ('Sweet Virginia', '04:25',27),
       ('Torn and Frayed', '04:17',27),
       ('Sweet Black Angel', '02:58',27),
       ('Loving Cup', '04:22',27),
       ('Happy', '03:04',27),
       ('Turd on the Run', '02:37',27),
       ('Ventilator Blues', '03:24',27),
       ('I Just Want to See His Face', '02:52',27),
       ('Let It Loose', '05:17',27),
       ('All Down the Line', '03:49',27),
       ('Stop Breaking Down', '04:35',27),
       ('Shine a Light', '04:14',27),
       ('Soul Survivor', '03:49',27);

-- Johnny Cash Album_Songs:
INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Folsom Prison Blues', '02:42', 28),
       ('Dark as a Dungeon', '03:05', 28),
       ('I Still Miss Someone', '01:55', 28),
       ('Cocaine Blues', '02:47', 28),
       ('25 Minutes to Go', '03:17', 28),
       ('Orange Blossom Special', '03:05', 28),
       ('The Long Black Veil', '03:04', 28),
       ('Send a Picture of Mother', '02:26', 28),
       ('The Wall', '01:49', 28),
       ('Dirty Old Egg-Suckin'' Dog', '01:30', 28),
       ('Flushed from the Bathroom of Your Heart', '02:16', 28),
       ('Jackson', '02:46', 28),
       ('Give My Love to Rose', '02:58', 28),
       ('I Got Stripes', '01:57', 28),
       ('Green, Green Grass of Home', '02:32', 28),
       ('Greystone Chapel', '06:02', 28);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Delia''s Gone', '02:17', 29),
       ('Let the Train Blow the Whistle', '02:15', 29),
       ('The Beast in Me', '02:45', 29),
       ('Drive On', '02:23', 29),
       ('Why Me Lord', '02:20', 29),
       ('Thirteen', '02:29', 29),
       ('Oh, Bury Me Not (Introduction: A Cowboy''s Prayer)', '03:53', 28),
       ('Bird on a Wire', '04:01', 29),
       ('Tennessee Stud', '02:54', 29),
       ('Down There by the Train', '05:34', 29),
       ('Redemption', '03:03', 29),
       ('Like a Soldier', '02:50', 29),
       ('The Man Who Couldn''t Cry', '05:00', 29);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Hey Porter', '02:15',30),
       ('Cry, Cry, Cry', '02:25',30),
       ('I Walk the Line', '02:45',30),
       ('Get Rhythm', '02:14',30),
       ('There You Go', '02:18',30),
       ('Ballad of a Teenage Queen', '02:12',30),
       ('Big River', '02:31',30),
       ('Guess Things Happen That Way', '01:50',30),
       ('All Over Again', '02:11',30),
       ('Don''t Take Your Guns to Town', '03:01',30),
       ('Five Feet High and Rising', '01:46',30),
       ('The Rebel - Johnny Yuma', '01:52',30),
       ('Tennessee Flat Top Box', '02:59',30),
       ('I Still Miss Someone', '02:35',30),
       ('Ring of Fire', '02:37',30),
       ('The Ballad of Ira Hayes', '04:08',30),
       ('Orange Blossom Special', '03:07',30),
       ('It Ain''t Me, Babe', '03:03',30),
       ('The One on the Right Is on the Left', '02:47',30),
       ('Jackson (with June Carter Cash)', '02:46',30),
       ('Folsom Prison Blues (Live)', '02:42',30),
       ('Daddy Sang Bass', '02:22',30),
       ('Girl from the North Country (with Bob Dylan)', '03:41',30),
       ('A Boy Named Sue (Live)', '03:47',30),
       ('If I Were a Carpenter (with June Carter Cash)', '02:59',30),
       ('Sunday Morning Coming Down', '04:08',30),
       ('Man in Black', '02:52',30),
       ('One Piece at a Time', '04:03',30),
       ('Highwayman (with Waylon Jennings, Willie Nelson, Kris Kristofferson)', '03:03',30),
       ('The Wanderer (with U2)', '04:44',30),
       ('Delia''s Gone', '02:18',30),
       ('Rusty Cage', '02:50',30);

-- Ella Fitzgerald Album_Songs: 

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('All Through the Night', '03:15',31),
       ('Anything Goes', '02:30',31),
       ('Miss Otis Regrets', '02:45',31),
       ('Too Darn Hot', '02:20',31),
       ('In the Still of the Night', '03:05',31),
       ('I Get a Kick Out of You', '02:50',31),
       ('Do I Love You?', '03:10',31),
       ('Always True to You in My Fashion', '02:55',31),
       ('Let''s Do It (Let''s Fall in Love)', '02:40',31),
       ('Just One of Those Things', '03:25',31),
       ('Ev''ry Time We Say Goodbye', '03:30',31),
       ('All of You', '03:20',31),
       ('Begin the Beguine', '03:15',31),
       ('Get Out of Town', '03:05',31),
       ('I Am in Love', '03:10',31),
       ('From This Moment On', '03:25',31),
       ('I Love Paris', '02:50',31),
       ('You Do Something to Me', '02:35',31),
       ('Ridin'' High', '02:55',31),
       ('Easy to Love', '03:05',31),
       ('It''s All Right with Me', '02:40',31),
       ('Why Can''t You Behave?', '03:10',31),
       ('What Is This Thing Called Love?', '02:50',31),
       ('You''re the Top', '03:15',31),
       ('Love for Sale', '02:55',31),
       ('It''s De-Lovely', '03:20',31),
       ('Night and Day', '03:25',31),
       ('Ace in the Hole', '03:05',31),
       ('So in Love', '03:30',31),
       ('I''ve Got You Under My Skin', '03:15',31),
       ('I Concentrate on You', '03:20',31),
       ('Don''t Fence Me In', '02:50',31);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Summertime', '03:58', 32),
       ('I Wants to Stay Here', '04:35', 32),
       ('My Man''s Gone Now', '04:02', 32),
       ('I Got Plenty o'' Nuttin''', '03:11', 32),
       ('Buzzard Song', '02:57', 32),
       ('Bess, You Is My Woman Now', '05:27', 32),
       ('It Ain''t Necessarily So', '06:36', 32),
       ('What You Want Wid Bess?', '03:07', 32),
       ('A Woman Is a Sometime Thing', '04:47', 32),
       ('Oh Doctor Jesus', '02:02', 32),
       ('Medley: Here Come De Honey Man / Crab Man / Oh, Dey''s So Fresh and Fine', '03:37', 32),
       ('There''s a Boat Dat''s Leavin'' Soon for New York', '04:53', 32),
       ('Oh Lawd, I''m on My Way', '02:55', 32);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Let''s Face the Music and Dance', '02:56', 33),
       ('You''re Laughing at Me', '03:20', 33),
       ('Let Yourself Go', '02:54', 33),
       ('You Can Have Him', '03:47', 33),
       ('Russian Lullaby', '03:40', 33),
       ('Puttin'' On the Ritz', '02:26', 33),
       ('Get Thee Behind Me Satan', '03:47', 33),
       ('Alexander''s Ragtime Band', '02:50', 33),
       ('Top Hat, White Tie and Tails', '03:36', 33),
       ('How About Me?', '03:18', 33),
       ('Cheek to Cheek', '03:44', 33),
       ('I Used to Be Color Blind', '02:33', 33),
       ('Lazy', '02:51', 33),
       ('How Deep Is the Ocean?', '03:04', 33),
       ('All by Myself', '02:33', 33),
       ('Remember', '03:28', 33),
       ('Supper Time', '03:12', 33),
       ('How''s Chances?', '03:12', 33),
       ('Heat Wave', '02:26', 33),
       ('Isn''t This a Lovely Day?', '03:25', 33),
       ('You Keep Coming Back Like a Song', '03:35', 33),
       ('Reaching for the Moon', '02:22', 33),
       ('Slumming on Park Avenue', '02:17', 33),
       ('The Song Is Ended (But the Melody Lingers On)', '02:43', 33);

-- James Brown Album_Songs:
INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Introduction / Opening Fanfare', '01:49', 34),
       ('I''ll Go Crazy', '02:07', 34),
       ('Try Me', '02:26', 34),
       ('Think', '02:59', 34),
       ('I Don''t Mind', '02:47', 34),
       ('Lost Someone', '10:48', 34),
       ('Night Train', '03:25', 34),
       ('Think (Alternate Version)', '03:17', 34),
       ('Lost Someone (Alternate Version)', '09:21', 34)

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('It''s a New Day', '06:15', 35),
       ('Funky Drummer', '09:16', 35),
       ('Give It Up or Turnit a Loose', '06:12', 35),
       ('I Got to Move', '07:02', 35),
       ('Funky Drummer (Bonus Beat Reprise)', '02:54', 35),
       ('Talkin'' Loud and Sayin'' Nothing', '07:35', 35),
       ('Get Up, Get Into It, Get Involved', '07:07', 35),
       ('Soul Power (Re-edit)', '08:06', 35);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Get on the Good Foot', '05:44', 36),
       ('The Whole World Needs Liberation', '03:35', 36),
       ('Your Love Was Good for Me', '03:59', 36),
       ('Cold Sweat', '05:03', 36),
       ('Recitation by Hank Ballard', '00:55', 36),
       ('I Got a Bag of My Own', '04:46', 36),
       ('Nothing Beats a Try but a Fail', '03:13', 36),
       ('Lost Someone', '10:13', 36),
       ('Funkie Drummer', '07:00', 36),
       ('Recitation by Bobby Byrd', '00:31', 36),
       ('I''m a Greedy Man', '07:06', 36),
       ('Talking Loud and Saying Nothing', '07:34', 36),
       ('I Need Help (I Can''t Do It Alone)', '05:32', 36),
       ('Recitation by James Brown', '00:40', 36),
       ('Doin'' It to Death', '06:15', 36);

-- Led Zeppelin Album_Songs:
INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Good Times Bad Times', '02:46', 37),
       ('Babe I''m Gonna Leave You', '06:42', 37),
       ('You Shook Me', '06:28', 37),
       ('Dazed and Confused', '06:27', 37),
       ('Your Time Is Gonna Come', '04:34', 37),
       ('Black Mountain Side', '02:12', 37),
       ('Communication Breakdown', '02:30', 37),
       ('I Can''t Quit You Baby', '04:42', 37),
       ('How Many More Times', '08:28', 37);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Whole Lotta Love', '05:34',38),
       ('What Is and What Should Never Be', '04:44',38),
       ('The Lemon Song', '06:20',38),
       ('Thank You', '04:49',38),
       ('Heartbreaker', '04:14',38),
       ('Living Loving Maid (She''s Just a Woman)', '02:39',38),
       ('Ramble On', '04:35',38),
       ('Moby Dick', '04:21',38),
       ('Bring It On Home', '04:20',38);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Black Dog', '04:54', 39),
       ('Rock and Roll', '03:40', 39),
       ('The Battle of Evermore', '05:51', 39),
       ('Stairway to Heaven', '08:02', 39),
       ('Misty Mountain Hop', '04:38', 39),
       ('Four Sticks', '04:45', 39),
       ('Going to California', '03:31', 39),
       ('When the Levee Breaks', '07:07', 39);

-- The Supremes Album_Songs
INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Where Did Our Love Go', '02:32', 40),
       ('Run, Run, Run', '02:24', 40),
       ('Baby Love', '02:36', 40),
       ('When the Lovelight Starts Shining Through His Eyes', '03:06', 40),
       ('Come See About Me', '02:42', 40),
       ('Long Gone Lover', '02:25', 40),
       ('I''m Giving You Your Freedom', '02:37', 40),
       ('A Breathtaking Guy', '02:22', 40),
       ('He Means the World to Me', '01:58', 40),
       ('Standing at the Crossroads of Love', '02:26', 40),
       ('Your Kiss of Fire', '02:23', 40),
       ('Ask Any Girl', '03:00', 40);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Ask Any Girl', '02:47', 41),
       ('Nothing but Heartaches', '02:59', 41),
       ('Mother Dear', '02:46', 41),
       ('Stop! In the Name of Love', '02:53', 41),
       ('Honey Boy', '02:34', 41),
       ('Back in My Arms Again', '02:52', 41),
       ('Whisper You Love Me Boy', '02:37', 41),
       ('The Only Time I''m Happy', '02:21', 41),
       ('He Holds His Own', '02:25', 41),
       ('Who Could Ever Doubt My Love', '02:38', 41),
       ('(I''m So Glad) Heartaches Don''t Last Always', '02:52', 41);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Love Is Like an Itching in My Heart', '02:54', 42),
       ('This Old Heart of Mine (Is Weak for You)', '02:39', 42),
       ('You Can''t Hurry Love', '02:45', 42),
       ('Shake Me, Wake Me (When It''s Over)', '02:36', 42),
       ('Baby I Need Your Loving', '02:45', 42),
       ('These Boots Are Made for Walkin''', '02:59', 42),
       ('I Can''t Help Myself (Sugar Pie Honey Bunch)', '02:41', 42),
       ('Get Ready', '02:40', 42),
       ('Put Yourself in My Place', '02:19', 42),
       ('Money (That''s What I Want)', '02:36', 42),
       ('Come and Get These Memories', '02:28', 42);

-- Ray Charles Album_Songs

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Ain''t That Love', '02:53', 43),
       ('Drown in My Own Tears', '03:22', 43),
       ('Come Back Baby', '03:04', 43),
       ('Sinner''s Prayer', '03:25', 43),
       ('Funny (But I Still Love You)', '03:15', 43),
       ('Losing Hand', '03:12', 43),
       ('A Fool for You', '03:00', 43),
       ('Hallelujah I Love Her So', '02:35', 43),
       ('Mess Around', '02:39', 43),
       ('This Little Girl of Mine', '02:33', 43),
       ('Mary Ann', '02:48', 43),
       ('Greenbacks', '02:51', 43),
       ('Don''t You Know', '02:56', 43),
       ('I Got a Woman', '02:52', 43);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Let the Good Times Roll', '02:53', 44),
       ('It Had to Be You', '02:44', 44),
       ('Alexander''s Ragtime Band', '02:54', 44),
       ('Two Years of Torture', '03:05', 44),
       ('When Your Lover Has Gone', '02:53', 44),
       ('Deed I Do', '02:23', 44),
       ('Just for a Thrill', '03:25', 44),
       ('You Won''t Let Me Go', '03:19', 44),
       ('Tell Me You''ll Wait for Me', '03:23', 44),
       ('Don''t Let the Sun Catch You Cryin''', '03:46', 44),
       ('Am I Blue', '03:36', 44),
       ('Come Rain or Come Shine', '03:40', 44);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Bye Bye Love', '02:08',45),
       ('You Don''t Know Me', '03:14',45),
       ('Half as Much', '03:24',45),
       ('I Love You So Much It Hurts', '03:35',45),
       ('Just a Little Lovin''', '03:24',45),
       ('Born to Lose', '03:16',45),
       ('Worried Mind', '02:56',45),
       ('It Makes No Difference Now', '03:31',45),
       ('You Win Again', '03:28',45),
       ('Careless Love', '03:55',45),
       ('I Can''t Stop Loving You', '04:15',45),
       ('Hey, Good Lookin''', '02:10',45),
       ('You Are My Sunshine', '03:00',45);

-- Nat King Cole ALBUM_SONGS
INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('When I Fall in Love', '03:11', 46),
       ('Stardust', '03:15', 46),
       ('Stay as Sweet as You Are', '02:57', 46),
       ('Where Can I Go Without You?', '02:56', 46),
       ('Maybe It''s Because I Love You Too Much', '02:50', 46),
       ('Love Letters', '02:48', 46),
       ('Ain''t Misbehavin''', '03:19', 46),
       ('I Thought About Marie', '03:09', 46),
       ('At Last', '03:00', 46),
       ('It''s All in the Game', '02:33', 46),
       ('When Sunny Gets Blue', '02:45', 46),
       ('Love Is the Thing', '03:09', 46);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Unforgettable', '03:28', 47),
       ('Mona Lisa', '03:25', 47),
       ('Too Young', '03:25', 47),
       ('It''s Only a Paper Moon', '02:57', 47),
       ('L-O-V-E', '02:33', 47),
       ('The Very Thought of You', '03:48', 47),
       ('Straighten Up and Fly Right', '02:24', 47),
       ('Nature Boy', '02:50', 47),
       ('Quizás, Quizás, Quizás', '02:45', 47),
       ('Darling, Je Vous Aime Beaucoup', '02:51', 47),
       ('Orange Colored Sky', '02:35', 47),
       ('You Stepped Out of a Dream', '02:33', 47)

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('The Christmas Song', '03:10', 48),
       ('Deck the Halls', '01:08', 48),
       ('O Holy Night', '02:56', 48),
       ('Joy to the World', '01:26', 48),
       ('O Little Town of Bethlehem', '02:18', 48),
       ('Silent Night', '02:49', 48),
       ('Hark! The Herald Angels Sing', '01:53', 48),
       ('Adeste Fideles', '02:27', 48),
       ('The First Noel', '01:55', 48),
       ('Caroling, Caroling', '02:02', 48),
       ('It''s Beginning to Look a Lot Like Christmas', '02:47', 48),
       ('White Christmas', '03:02', 48);

-- Stevie Wonder ALBUM_SONGS
INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('You Are the Sunshine of My Life', '02:58', 49),
       ('Maybe Your Baby', '06:51', 49),
       ('You and I (We Can Conquer the World)', '04:38', 49),
       ('Tuesday Heartbreak', '03:02', 49),
       ('You''ve Got It Bad Girl', '04:57', 49),
       ('Superstition', '04:26', 49),
       ('Big Brother', '03:34', 49),
       ('Blame It on the Sun', '03:27', 49),
       ('Looking for Another Pure Love', '04:43', 49),
       ('I Believe (When I Fall in Love It Will Be Forever)', '04:51', 49);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Too High', '04:37', 50),
       ('Visions', '05:23', 50),
       ('Living for the City', '07:23', 50),
       ('Golden Lady', '04:58', 50),
       ('Higher Ground', '03:42', 50),
       ('Jesus Children of America', '04:10', 50),
       ('All in Love Is Fair', '03:41', 50),
       ('Don''t You Worry ''bout a Thing', '04:45', 50),
       ('He''s Misstra Know-It-All', '05:35', 50);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Love''s in Need of Love Today', '07:05', 51),
       ('Have a Talk with God', '02:42', 51),
       ('Village Ghetto Land', '03:25', 51),
       ('Contusion', '03:46', 51),
       ('Sir Duke', '03:52', 51),
       ('I Wish', '04:12', 51),
       ('Knocks Me Off My Feet', '03:36', 51),
       ('Pastime Paradise', '03:28', 51),
       ('Summer Soft', '04:14', 51),
       ('Ordinary Pain', '06:21', 51),
       ('Isn''t She Lovely', '06:34', 51),
       ('Joy Inside My Tears', '06:30', 51),
       ('Black Man', '08:30', 51),
       ('Ngiculela - Es Una Historia - I Am Singing', '03:48', 51),
       ('If It''s Magic', '03:12', 51),
       ('As', '07:08', 51),
       ('Another Star', '08:28', 51);

-- Marvin Gaye ALBUM_SONGS
INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('What''s Going On', '03:53', 52),
       ('What''s Happening Brother', '02:43', 52),
       ('Flyin'' High (In the Friendly Sky)', '03:49', 52),
       ('Save the Children', '04:03', 52),
       ('God Is Love', '01:41', 52),
       ('Mercy Mercy Me (The Ecology)', '03:16', 52),
       ('Right On', '07:33', 52),
       ('Wholy Holy', '03:08', 52),
       ('Inner City Blues (Make Me Wanna Holler)', '05:27', 52);

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('Let''s Get It On', '04:51', 53),
       ('Please Stay (Once You Go Away)', '03:32', 53),
       ('If I Should Die Tonight', '03:57', 53),
       ('Keep Gettin'' It On', '03:12', 53),
       ('Come Get to This', '02:40', 53),
       ('Distant Lover', '04:15', 53),
       ('You Sure Love to Ball', '04:44', 53),
       ('Just to Keep You Satisfied', '04:27', 53)

INSERT INTO ALBUM_SONGS (SongName, Duration, AlbumID)
VALUES ('I Want You', '03:56', 54),
       ('Come Live with Me Angel', '06:29', 54),
       ('After the Dance', '04:39', 54),
       ('Feel All My Love Inside', '03:23', 54),
       ('I Wanna Be Where You Are', '01:17', 54),
       ('I Want You (Intro Jam)', '00:21', 54),
       ('All the Way Around', '03:51', 54),
       ('Since I Had You', '04:05', 54),
       ('Soon I''ll Be Loving You Again', '03:14', 54),
       ('I Want You (Outro Jam)', '01:24', 53);

-- Singles:
-- Elvis Presley 
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('A Little Less Conversation', '2002-08-01',1 ,5),
	   ('Suspicious Minds - Live in Las Vegas, NV','2019-03-08',1 ,5)

-- Michael Jackson
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('Slave to the Rythm - Audien Remix Radio Edit', '2014-08-12',3 ,4);

-- Bob Dylan
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('Pretty Saro - (Unreleased)[Self Portrait]', '2013-08-13',4 ,1),
	   ('Things We Said Today', '2013-08-13',4 ,1);

-- Jimi Hendrix 
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('Valleys of Neptune', '2010-01-01', 5 ,1);

-- Aretha Franklin
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('You Light Up My Life', '2010-01-01',6 ,6);

-- Queen
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('Face It Alone', '2022-10-13',7 ,7);

-- David Bowie 
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('Blue Jean - 1999 Remaster', '1984-01-01',8 ,8);

-- The Rolling Stones
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('Monkey Man - 2019 Remaster', '2019-09-11',9 ,9);

-- Johnny Cash
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('Redemption Day', '2019-04-19',9, 14);

-- Ella Fitzgerald
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('Cheek To Cheek (Live)', '2022-06-03',11 , 11);

-- James Brown
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('Machine No Make Sex', '2021-12-10', 12 , 11);

-- Led Zeppelin 
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('Rock and Roll - Alternate Mix', '1972-02-21', 13 , 6);

-- The Supremes
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('The Happening', '1967-02-24', 14 , 11);

-- Ray Charles
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('America the Beautiful', '2021-07-02', 15 , 15);

-- Nat King Cole
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('At Last - Remastered', '2009-01-01', 16 , 13);
-- Stevie Wonder
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('Faith', '2016-11-04', 17 , 11);

-- Marvin Gaye
INSERT INTO SINGLE_SONGS (SingleName, DateOfRelease, ArtistID, RecordLabelID)
VALUES ('I Want You-John Morales M+M Main Mix', '2022-08-26', 18 , 12);















