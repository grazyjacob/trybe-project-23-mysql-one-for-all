DROP DATABASE IF EXISTS SpotifyClone;
  CREATE DATABASE IF NOT EXISTS SpotifyClone;
  USE SpotifyClone;
  CREATE TABLE client_table (
      client_id INT PRIMARY KEY AUTO_INCREMENT,
      client_name VARCHAR(50),
      client_age INT 
  ) ENGINE = InnoDB;
  CREATE TABLE album_table (
      album_id INT,
      album_name VARCHAR(50),
      artist_id INT,
      music_id INT 
  ) ENGINE = InnoDB;
  CREATE TABLE historic_table (
      historic_id INT,
      client_id INT PRIMARY KEY AUTO_INCREMENT,
      music_historic VARCHAR(100)
   ) ENGINE = InnoDB;
  CREATE TABLE plane_table (
      plane_name VARCHAR(100),
      plane_id INT PRIMARY KEY AUTO_INCREMENT
  ) ENGINE = InnoDB;
  CREATE TABLE follow_artists_table (
      follow_artists VARCHAR(100),
  ) ENGINE = InnoDB;
  CREATE TABLE artists_table (
      artist_name VARCHAR(100)
  ) ENGINE = InnoDB;
  CREATE TABLE musics_table (
      music_name VARCHAR(100)
  ) ENGINE = InnoDB;
