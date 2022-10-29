SELECT M.music_name AS cancao, COUNT(H.music_id) AS reproducoes 
FROM SpotifyClone.musics_table AS M
INNER JOIN SpotifyClone.historic_table AS H
ON M.music_id = H.music_id GROUP BY M.music_name
ORDER BY reproducoes DESC, M.music_name
LIMIT 2 