-- Para garantir que Id_com é uma chave primária
ALTER TABLE dim_covid_19_completa
ADD PRIMARY KEY (Id_com);

-- Ou, se você prefere apenas adicionar um índice
CREATE INDEX idx_Id_com ON dim_covid_19_completa (Id_com);

-- dm_data
ALTER TABLE dim_data
ADD PRIMARY KEY (Id_data);

-- dim_medidor_mundial
ALTER TABLE dim_medidor_mundial
ADD PRIMARY KEY (Id_med);

-- dim_regiao_oms
ALTER TABLE dim_regiao_oms
ADD PRIMARY KEY (id_regiao);
