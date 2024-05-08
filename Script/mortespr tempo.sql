SELECT d.Data, SUM(f.Confirmado) AS Total_Confirmados, SUM(f.Mortes) AS Total_Mortes
FROM Fato_Covid19 f
JOIN dim_data d ON f.Id_data = d.Id_data
GROUP BY d.Data
ORDER BY d.Data;
