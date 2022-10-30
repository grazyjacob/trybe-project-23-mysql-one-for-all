SELECT MIN(P.plane_value) AS faturamento_minimo, 
MAX(P.plane_value) AS faturamento_maximo,
ROUND(SUM(P.plane_value) / COUNT(C.client_name), 2) AS faturamento_medio,
SUM(P.plane_value) AS faturamento_total
FROM SpotifyClone.plane_table AS P
INNER JOIN SpotifyClone.client_table AS C
ON P.plane_id = C.plane_id