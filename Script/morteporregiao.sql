SELECT c.Pais_regiao, SUM(f.Confirmado) AS Total_Confirmados, SUM(f.Mortes) AS Total_Mortes
FROM Fato_Covid19 f
JOIN dim_covid_19_completa c ON f.Id_com = c.Id_com
GROUP BY c.Pais_regiao;
