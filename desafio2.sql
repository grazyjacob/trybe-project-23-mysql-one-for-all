SELECT COUNT(music_id) AS cancoes,
(SELECT COUNT(artist_id) FROM SpotifyClone.artists_table)
 AS artistas,
(SELECT COUNT(album_id) FROM SpotifyClone.album_table)
 AS albuns FROM SpotifyClone.musics_table;