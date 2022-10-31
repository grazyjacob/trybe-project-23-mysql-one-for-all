SELECT A.artist_name AS artista,
AL.album_name AS album
FROM SpotifyClone.artists_table AS A
INNER JOIN SpotifyClone.album_table AS AL
ON A.artist_id = AL.artist_id
WHERE A.artist_name = 'Elis Regina'
GROUP BY artista, album
ORDER BY artista;