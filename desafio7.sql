SELECT A.artist_name AS artista,
AL.album_name AS album,
COUNT(F.client_id) AS seguidores
FROM SpotifyClone.artists_table AS A
INNER JOIN SpotifyClone.album_table AS AL
ON A.artist_id = AL.artist_id
INNER JOIN SpotifyClone.follow_artists_table AS F
ON F.artist_id = A.artist_id
GROUP BY artista, album 
ORDER BY seguidores DESC, artista, album;