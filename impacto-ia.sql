CREATE TABLE impacto_ia_paises (
    pais VARCHAR(50),
    usuarios_totais_milhoes INT,
    interacoes_totais_milhoes_dia INT,
    consumo_agua_milhoes_litros INT,
    tecnologia_resfriamento VARCHAR(50),
    principais_regioes TEXT,
    custo_operacional_milhoes_usd INT,
    principais_plataformas TEXT
);

INSERT INTO impacto_ia_paises VALUES
('Estados Unidos', 180, 4050, 2000, 'Evaporativo', 'Califórnia, Texas, Virgínia', 500, 'ChatGPT'),
('China', 300, 9000, 3000, 'Ar / Alternativos', 'Guangdong, Xangai, Pequim', NULL, 'Ernie Bot'),
('Índia', 95, 1188, 1000, NULL, 'Mumbai, Bangalore, Hyderabad', NULL, 'Gemini'),
('Brasil', 65, 975, 850, 'Híbrido / Reuso', 'São Paulo, Fortaleza', NULL, 'ChatGPT, Claude'),
('Alemanha', 45, 675, 550, 'Ar', NULL, NULL, 'Perplexity AI'),
('Japão', 65, NULL, 700, 'Eficiente', 'Tóquio, Osaka', NULL, 'ChatGPT'),
('França', 35, NULL, 400, NULL, NULL, NULL, NULL);
