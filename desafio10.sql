SELECT M.music_name AS nome,
COUNT(H.music_id) AS reproducoes
FROM SpotifyClone.musics_table AS M
INNER JOIN SpotifyClone.historic_table AS H
ON H.music_id = M.music_id
INNER JOIN SpotifyClone.client_table AS C
ON H.client_id = C.client_id
WHERE plane_id = 1 OR plane_id = 3
GROUP BY nome
ORDER BY nome