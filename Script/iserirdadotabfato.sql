INSERT INTO Fato_Covid19
(Id_data, Id_com, Id_med, id_regiao, Confirmado, Mortes, Recuperados, Ativos, Total_Casos, Total_mortos, Total_Recuperados, Casos_Ativo, Serios_Criticos, Total_Testes)
SELECT
    d.Id_data,
    c.Id_com,
    m.Id_med,
    r.id_regiao,
    c.Confirmado,
    c.Mortes,
    c.Recuperados,
    c.Ativos,
    m.Total_Casos,
    m.Total_mortos,
    m.Total_Recuperados,
    m.Casos_Ativo,
    m.Serios_Criticos,
    m.Total_Testes
FROM
    dim_covid_19_completa c
JOIN
    dim_data d ON c.Date = d.Data
JOIN
    dim_medidor_mundial m ON c.Pais_regiao = m.Pais_regiao
JOIN
    dim_regiao_oms r ON c.Regiao_OMS = r.Regiao_OMS;
