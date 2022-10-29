SELECT C.client_name AS usuario, COUNT(H.music_id) AS qt_de_musicas_ouvidas, 
ROUND(SUM(M.music_duration) / 60, 2) AS total_minutos
FROM SpotifyClone.client_table AS C
INNER JOIN SpotifyClone.historic_table AS H
ON C.client_id = H.client_id
INNER JOIN SpotifyClone.musics_table AS M
ON H.music_id = M.music_id
GROUP BY C.client_name ORDER BY C.client_name;