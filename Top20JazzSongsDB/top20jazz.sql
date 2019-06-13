DROP TABLE IF EXISTS "song";
CREATE TABLE IF NOT EXISTS "song" (
	"SongId"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"SongTitle"	TEXT,
	"Position"	INTEGER,
	"YearReleased"	INTEGER,
	"ArtistId"	INTEGER NOT NULL,
	"GenreId"	INTEGER NOT NULL,
	"AlbumId"	INTEGER NOT NULL,
	FOREIGN KEY("ArtistId") REFERENCES "artist"("ArtistId"),
	FOREIGN KEY("AlbumId") REFERENCES "album"("AlbumId"),
	FOREIGN KEY("GenreId") REFERENCES "genre"("GenreId")
);
DROP TABLE IF EXISTS "album";
CREATE TABLE IF NOT EXISTS "album" (
	"AlbumId"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"AlbumTitle"	TEXT,
	"LabelId"	INTEGER NOT NULL,
	FOREIGN KEY("LabelId") REFERENCES "label"
);
DROP TABLE IF EXISTS "label";
CREATE TABLE IF NOT EXISTS "label" (
	"LabelId"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Label"	TEXT
);
DROP TABLE IF EXISTS "genre";
CREATE TABLE IF NOT EXISTS "genre" (
	"GenreId"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Genre"	TEXT
);
DROP TABLE IF EXISTS "artist";
CREATE TABLE IF NOT EXISTS "artist" (
	"ArtistId"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"Artist"	TEXT
);
INSERT INTO "song" VALUES (1,'Take Five',1,1959,1,1,1),
 (2,'So What',2,1959,2,2,2),
 (3,'Take The A Train',3,1947,3,2,3),
 (4,'Round Midnight',4,1982,4,3,4),
 (5,'My Favorite Things',5,1961,5,4,5),
 (6,'A Love Supreme
(Acknowledgment)',6,1965,5,4,6),
 (7,'All Blues',7,1959,2,2,2),
 (8,'Birdland',8,1977,6,5,7),
 (9,'The Girl From
Ipanema',9,1963,7,6,8),
 (10,'Sing, Sing, Sing',10,1936,8,2,9),
 (11,'Strange Fruit',11,1939,9,7,10),
 (12,'A Night in Tunisia',12,1942,10,3,11),
 (13,'Giant Steps',13,1960,5,2,12),
 (14,'Blue Rondo a la Turk',14,1959,1,2,1),
 (15,'Goodbye Pork Pie Hat',15,1959,11,2,13),
 (16,'Stolen Moments',16,1975,12,2,14),
 (17,'West End Blues',17,1928,13,2,15),
 (18,'God Bless The Child',18,1942,9,2,16),
 (19,'Cantaloupe Island',19,1964,14,4,17),
 (20,'My Funny Valentine',20,1959,15,2,18);
INSERT INTO "album" VALUES (1,'Time Out',1),
 (2,'Kind of Blue',1),
 (3,'Take The "A" Train / The Sidewalks Of New York',2),
 (4,'''Round Midnight',3),
 (5,'My Favorite Things',4),
 (6,'A Love Supreme',5),
 (7,'Heavy Weather',1),
 (8,'Getz/Gilberto',6),
 (9,'Sing, Sing, Sing (With a Swing) / It''s Been So Long',7),
 (10,'Strange Fruit / Fine and Mellow',8),
 (11,'A Night in Tunisia',9),
 (12,'Giant Steps',4),
 (13,'Mingus Ah Um',1),
 (14,'Stolen Moments',10),
 (15,'West End Blues',7),
 (16,'God Bless the Child / Solitude',11),
 (17,'Empyrean Isles',12),
 (18,'My Funny Valentine',13);
INSERT INTO "label" VALUES (1,'Columbia'),
 (2,'RCA Victor'),
 (3,'Milestone'),
 (4,'Atlantic'),
 (5,'Impulse!'),
 (6,'Verve'),
 (7,'Brunswick'),
 (8,'Commodore'),
 (9,'Continental '),
 (10,'East Wind'),
 (11,'Okeh'),
 (12,'Blue Note Records'),
 (13,'CBS');
INSERT INTO "genre" VALUES (1,'West Coast cool jazz'),
 (2,'Jazz'),
 (3,'Bebop'),
 (4,'Modal jazz'),
 (5,'Jazz fusion'),
 (6,'Bossa nova'),
 (7,'Blues jazz');
INSERT INTO "artist" VALUES (1,'Dave Brubeck'),
 (2,'Miles Davis'),
 (3,'Duke Ellington'),
 (4,'Thelonious Monk'),
 (5,'John Coltrane'),
 (6,'Weather Report'),
 (7,'Stan Getz & Astrud Gilberto'),
 (8,'Benny Goodman'),
 (9,'Billie Holiday'),
 (10,'Dizzy Gillespie'),
 (11,'Charles Mingus'),
 (12,'Oliver Nelson'),
 (13,'Louis Armstrong'),
 (14,'Herbie Hancock'),
 (15,'Chet Baker');
COMMIT;
