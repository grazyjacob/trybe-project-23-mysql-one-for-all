DROP DATABASE IF EXISTS SpotifyClone;
  CREATE DATABASE IF NOT EXISTS SpotifyClone;
  CREATE TABLE SpotifyClone.plane_table (
      plane_name VARCHAR(100),
      plane_id INT PRIMARY KEY AUTO_INCREMENT,
      plane_value  DECIMAL(10,2)
  ) ENGINE = InnoDB;

  CREATE TABLE SpotifyClone.client_table (
      client_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      client_name VARCHAR(100),
      client_age INT,
      plane_id INT NOT NULL,
      client_signed DATETIME NOT NULL,
	  CONSTRAINT FOREIGN KEY (plane_id) REFERENCES plane_table (plane_id)
  ) ENGINE = InnoDB;

  CREATE TABLE SpotifyClone.artists_table (
      artist_name VARCHAR(100),
      artist_id INT PRIMARY KEY AUTO_INCREMENT
  ) ENGINE = InnoDB;

  CREATE TABLE SpotifyClone.album_table (
      album_id INT PRIMARY KEY AUTO_INCREMENT,
      album_name VARCHAR(100),
      artist_id INT NOT NULL,
      CONSTRAINT FOREIGN KEY (artist_id) REFERENCES artists_table (artist_id)
  ) ENGINE = InnoDB;

  CREATE TABLE SpotifyClone.musics_table (
      music_id INT PRIMARY KEY AUTO_INCREMENT,
      music_name VARCHAR(100),
      album_id INT NOT NULL,
      music_duration INT NOT NULL,
      CONSTRAINT FOREIGN KEY (album_id) REFERENCES album_table (album_id)
  ) ENGINE = InnoDB; 

  CREATE TABLE SpotifyClone.historic_table (
      client_id INT NOT NULL,
      music_id INT NOT NULL,
      date DATETIME NOT NULL,
     CONSTRAINT FOREIGN KEY (music_id) REFERENCES musics_table (music_id),
     CONSTRAINT FOREIGN KEY (client_id) REFERENCES client_table (client_id),
     CONSTRAINT PRIMARY KEY (music_id, client_id)
   ) ENGINE = InnoDB;

  CREATE TABLE SpotifyClone.follow_artists_table (
      artist_id INT NOT NULL,
      client_id INT NOT NULL,
      CONSTRAINT FOREIGN KEY (artist_id) REFERENCES artists_table (artist_id),
      CONSTRAINT FOREIGN KEY (client_id) REFERENCES client_table (client_id),
      CONSTRAINT PRIMARY KEY (artist_id, client_id)
  ) ENGINE = InnoDB;

   INSERT INTO SpotifyClone.plane_table (plane_name, plane_value)
       VALUES
       ('gratuito', 0.00),
       ('universitário', 5.99),
       ('pessoal', 6.99),
       ('familiar', 7.99);

   INSERT INTO SpotifyClone.client_table (client_name, client_age, plane_id, client_signed)
     VALUES
    ('Barbara Liskov', '82', 1, '2019-10-20'),
    ('Robert Cecil Martin', '58', 1, '2017-01-06'),
    ('Ada Lovelace', '37', 4, '2017-12-30'),
	('Martin Fowler', '46', 4, '2017-01-17'),
    ('Sandi Metz', '58', 4, '2018-04-29'),
    ('Paulo Freire', '19', 2, '2018-02-14'),
    ('Bell Hooks', '26', 2, '2018-01-05'),
    ('Christopher Alexander', '85', 3, '2019-06-05'),
    ('Judith Butler', '45', 3, '2020-05-13'),
	('Jorge Amado', '58', 3, '2017-02-17');
      
	 INSERT INTO SpotifyClone.artists_table (artist_name, artist_id)
       VALUES 
       ('Beyoncé', '1'),
       ('Queen', '2'),
       ('Elis Regina', '3'),
       ('Baco Exu do Blues', '4'),
       ('Blind Guardian', '5'),
       ('Nina Simone', '6');
       
	INSERT INTO SpotifyClone.album_table (album_name, artist_id)
      VALUES 
      ('Renaissance', '1'),
      ('Jazz', '2'),
      ('Hot Space', '2'),
      ('Falso Brilhante', '3'),
      ('Vento de Maio', '3'),
      ('QVVJFA?', '4'),
      ('Somewhere Far Beyond', '5'),
      ('I Put A Spell On You', '6');
       
	 INSERT INTO SpotifyClone.musics_table (music_name, album_id, music_duration)
       VALUES
       ('Samba em Paris', 6, 267),
       ('Feeling Good', 8, 100),
       ('VIRGO’S GROOVE', 1, 369),
       ('O Medo de Amar é o Medo de Ser Livre', 5, 207),
       ('Under Pressure', 3, 152),
       ('BREAK MY SOUL', 1, 279),
       ('Don’t Stop Me Now', 2, 203),
       ('The Bard’s Song', 4, 244),
       ('ALIEN SUPERSTAR', 1, 116),
       ('Como Nossos Pais', 4, 105);
       
	 INSERT INTO SpotifyClone.historic_table (client_id, music_id, date)
       VALUES
       ('1', '3', '2022-02-28 10:45:55'),
       ('1', '1', '2020-05-02 05:30:35'),
       ('1', '2', '2020-03-06 11:22:33'),
       ('2', '4', '2022-08-05 08:05:17'),
       ('2', '2', '2020-01-02 07:40:33'),
       ('3', '2', '2020-11-13 16:55:13'),
       ('3', '3', '2020-12-05 18:38:30'),
       ('4', '1', '2021-08-15 17:10:10'),
       ('5', '1', '2022-01-09 01:44:33'),
       ('5', '5', '2020-08-06 15:23:43'),
       ('6', '4', '2017-01-24 00:31:17'), 
       ('6', '6', '2017-10-12 12:35:20'),
       ('7', '7', '2011-12-15 22:30:49'),
       ('8', '7', '2012-03-17 14:56:41'),
       ('9', '8', '2022-02-24 21:14:22'),
       ('10', '9', '2015-12-13 08:30:22');
       
	INSERT INTO SpotifyClone.follow_artists_table (client_id, artist_id)
	  VALUES 
        (1, 1),
        (1, 2),
        (1, 3),
        (2, 1),
        (2, 3),
        (3, 2),
        (4, 4),
        (5, 5),
        (5, 6),
        (6, 1),
        (6, 6),
        (7, 6),
        (9, 3),
        (10, 2);
        