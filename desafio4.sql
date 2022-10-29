SELECT C.client_name AS usuario,
IF(MAX(YEAR(H.date)) >= '2021', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.client_table AS C
INNER JOIN SpotifyClone.historic_table AS H
ON C.client_id = H.client_id GROUP BY C.client_name
ORDER BY C.client_name