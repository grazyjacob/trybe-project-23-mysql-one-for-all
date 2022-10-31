SELECT COUNT(H.client_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.client_table AS C
INNER JOIN SpotifyClone.historic_table AS H
ON C.client_id = H.client_id
WHERE C.client_name = 'Barbara Liskov'