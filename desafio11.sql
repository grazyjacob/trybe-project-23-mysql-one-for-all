SELECT music_name AS nome_musica,
CASE 
	WHEN music_Name LIKE '%Bard%' THEN REPLACE(music_Name, 'Bard', 'QA')
	WHEN music_Name LIKE '%Amar%' THEN REPLACE(music_Name, 'Amar', 'Code Review')
	WHEN music_Name LIKE '%Pais%' THEN REPLACE(music_Name, 'Pais', 'Pull Requests')
	WHEN music_Name LIKE '%SOUL%' THEN REPLACE(music_Name, 'SOUL', 'CODE')
	WHEN music_Name LIKE '%SUPERSTAR%' THEN REPLACE(music_Name, 'SUPERSTAR', 'SUPERDEV')
    END AS novo_nome
FROM SpotifyClone.musics_table
ORDER BY novo_nome DESC
LIMIT 5;

