USE grow_cohort2;

CREATE TABLE artists (id INTEGER PRIMARY KEY AUTO_INCREMENT, name TEXT, country
TEXT, genre TEXT);

 INSERT INTO artists (name, country, genre) VALUES ("Taylor Swift", "US", "Pop"),
							("Led Zeppelin", "US", "Hard rock"),
							("ABBA", "Sweden", "Disco"),
							("Queen", "UK", "Rock"),
                            ("Celine Dion", "Canada", "Pop"),
                            ("Meatloaf", "US", "Hard rock"),
                            ("Garth Brooks", "US", "Country"),
                            ("Shania Twain", "Canada", "Country"),
                            ("Rihanna", "US", "Pop"),
                            ("Guns N' Roses", "US", "Hard rock"),
                            ("Gloria Estefan", "US", "Pop"),
                            ("Bob Marley", "Jamaica", "Reggae");
                            
SELECT*
FROM artists;

CREATE TABLE songs (id INTEGER PRIMARY KEY AUTO_INCREMENT, artist TEXT, title
TEXT);

INSERT INTO songs (artist, title) VALUES ("Taylor Swift", "Shake it off"),
										 ("Rihanna", "Stay"),
                                         ("Celine Dion", "My heart will go on"),
                                         ("Celine Dion", "A new day has come"),
                                         ("Shania Twain", "Party for two"),
                                         ("Gloria Estefan", "Conga"),
                                         ("Led Zeppelin", "Stairway to heaven"),
                                         ("ABBA", "Mamma mia"),
                                         ("Queen", "Bicycle Race"),
                                         ("Queen", "Bohemian Rhapsody"),
                                         ("Guns N' Roses", "Don't cry");
                                         
SELECT*
FROM songs;

SELECT title
FROM songs
WHERE artist = 'Queen';       -- This query gives the title of all songs by the artist named Queen
      
SELECT name
FROM artists
WHERE genre = 'Pop';    -- This query brings out all artists that fall within the Pop genre

SELECT* 
FROM songs
WHERE artist IN ( SELECT name FROM artists WHERE genre = 'Pop');       -- This query brings out all the songs by Pop artists