-- WARNING: This schema is for context only and is not meant to be run.
-- Table order and constraints may not be valid for execution.

CREATE TABLE public.filmes (
  id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  nome text NOT NULL,
  genero text,
  ano numeric,
  CONSTRAINT filmes_pkey PRIMARY KEY (id)
);
CREATE TABLE public.receitas (
  id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  filme_id bigint NOT NULL,
  nome text NOT NULL,
  dificuldade text,
  CONSTRAINT receitas_pkey PRIMARY KEY (id),
  CONSTRAINT receitas_filme_id_fkey FOREIGN KEY (filme_id) REFERENCES public.filmes(id)
);
CREATE TABLE public.ingredientes (
  id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  nome text NOT NULL,
  CONSTRAINT ingredientes_pkey PRIMARY KEY (id)
);
CREATE TABLE public.receitas_ingredientes (
  id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  receita_id bigint NOT NULL,
  ingrediente_id bigint NOT NULL,
  quantidade numeric NOT NULL,
  unidade text NOT NULL,
  CONSTRAINT receitas_ingredientes_pkey PRIMARY KEY (id),

  --------------------

  INSERT INTO filmes (nome, genero, ano) VALUES
  ('Coraline', 'Animação/Aventura', 2009),
  ('O Poderoso Chefão', 'Drama', 1972),
  ('Saga Harry Potter', 'Aventura/Fantasia', 2001),
  ('Percy Jackson e os Olimpianos', 'Aventura/Fantasia', 2010-2013);

----------------------

INSERT INTO receitas (filme_id, nome, dificuldade) VALUES
  -- Filme id 1 = Coraline
  (1, 'Milkshake de Manga', 'Fácil'),
  (1, 'Frango Assado com Purê de Batata', 'Média'),
  (1, 'Bolo Welcome Home', 'Difícil'),
  
  -- Filme id 2 = O Poderoso Chefão
  (2, 'Ragu de Linguiça', 'Fácil'),
  (2, 'Cannoli', 'Média'),
  (2, 'Drink Godfather', 'Fácil'),
  
  -- Filme id 3 = Harry Potter
  (3, 'Cerveja Amanteigada', 'Média'),
  (3, 'Empadão de Carne (Steak and Kidney Pie)', 'Média'),
  (3, 'Bolo Happee Birthdae', 'Difícil'),
  
  -- Filme id 4 = Percy Jackson e os Olimpianos
  (4, 'Cookie Azul', 'Fácil'),
  (4, 'Chips de Tortilha Azuis com Dip (Guacamole e Sour Cream)', 'Média'),
  (4, 'Néctar dos Deuses', 'Difícil');

------------------------

INSERT INTO ingredientes (nome) VALUES
  ('Manga'),
  ('Banana'),
  ('Iogurte natural'),
  ('Leite de coco'),
  ('Açúcar demerara'),
  ('Hortelã'),
  ('Frango'),
  ('Batata'),
  ('Manteiga'),
  ('Creme de leite'),
  ('Sal'),
  ('Pimenta do reino'),
  ('Alho'),
  ('Cebola'),
  ('Leite'),
  ('Margarina'),
  ('Açúcar'),
  ('Óleo suave'),
  ('Farinha de fermentação'),
  ('Chocolate semiamargo'),
  ('Creme para bater'),
  ('Chocolate branco'),
  ('Corante amarelo'),
  ('Corante rosa'),
  ('Corante vermelho'),
  ('Frosting de queijo creme'),
  ('Linguiça toscana'),
  ('Linguiça calabresa'),
  ('Cebola roxa'),
  ('Alho-poró'),
  ('Erva doce'),
  ('Pimenta calabresa'),
  ('Aipo'),
  ('Vinho tinto seco'),
  ('Tomate pelado'),
  ('Cenoura'),
  ('Salsão'),
  ('Vinho tinto'),
  ('Água'),
  ('Louro'),
  ('Manjericão'),
  ('Azeite'),
  ('Farinha de trigo'),
  ('Açúcar refinado'),
  ('Cacau em pó'),
  ('Banha de porco'),
  ('Ovo'),
  ('Vinho Marsala'),
  ('Vinagre'),
  ('Ricota fresca'),
  ('Chocolate ao leite'),
  ('Limão siciliano'),
  ('Cachaça'),
  ('Canela em pó'),
  ('Gordura vegetal'),
  ('Vinho branco seco'),
  ('Clara de ovo'),
  ('Suco de limão'),
  ('Raspas de limão'),
  ('Uísque escocês'),
  ('Amaretto'),
  ('Sorvete de creme'),
  ('Sorvete de baunilha'),
  ('Açúcar mascavo'),
  ('Cravo em pó'),
  ('Noz-moscada'),
  ('Gengibre em pó'),
  ('Espumante'),
  ('Refrigerante de creme'),
  ('Extrato de baunilha'),
  ('Carne de gado'),
  ('Riñones de cordeiro'),
  ('Cogumelos'),
  ('Caldo de carne'),
  ('Amido de milho'),
  ('Óleo vegetal'),
  ('Molho Worcestershire'),
  ('Tomilho'),
  ('Folha de louro'),
  ('Ovos'),
  ('Chocolate em pó'),
  ('Fermento químico'),
  ('Bicarbonato de sódio'),
  ('Café'),
  ('Chocolate meio amargo'),
  ('Corante gel rosa'),
  ('Corante gel verde'),
  ('Açúcar cristal'),
  ('Fermento'),
  ('Gotas de chocolate'),
  ('Gotas de chocolate branco'),
  ('Corante alimentício azul'),
  ('Corante alimentício violeta'),
  ('Amido de milho'),
  ('Abacate'),
  ('Tomate'),
  ('Óleo de oliva'),
  ('Erco de coentro'),
  ('Cebola'),
  ('Cúrcuma'),
  ('Leite condensado'),
  ('Achocolatado granulado'),
  ('Castanha-do-pará granulado'),
  ('Leite de vaca');

----------------

INSERT INTO receitas_ingredientes (receita_id, ingrediente_id, quantidade, unidade, observacao) VALUES
  (1, 1, 150, 'g', 'Manga'),
  (1, 2, 1, 'unidade', 'Banana'),
  (1, 3, 100, 'g', 'Iogurte natural'),
  (1, 4, 200, 'ml', 'Leite de coco'),
  (1, 5, 50, 'g', 'Açúcar demerara'),
  (1, 6, 5, 'folhas', 'Hortelã');

INSERT INTO receitas_ingredientes (receita_id, ingrediente_id, quantidade, unidade, observacao) VALUES
  (2, 7, 1.5, 'kg', 'Frango inteiro'),
  (2, 8, 1, 'kg', 'Batata'),
  (2, 9, 50, 'g', 'Manteiga'),
  (2, 10, 100, 'ml', 'Creme de leite'),
  (2, 11, 1, 'colher (sopa)', 'Sal'),
  (2, 12, 1, 'colher (chá)', 'Pimenta do reino'),
  (2, 13, 3, 'dentes', 'Alho'),
  (2, 14, 1, 'unidade', 'Cebola'),
  (2, 15, 1, 'caixinha', 'Leite'),
  (2, 16, 1, 'colher (sopa)', 'Margarina');

INSERT INTO receitas_ingredientes (receita_id, ingrediente_id, quantidade, unidade, observacao) VALUES
  (3, 17, 200, 'g', 'Açúcar'),
  (3, 18, 120, 'ml', 'Óleo suave'),
  (3, 19, 2, 'colheres (sopa)', 'Farinha de fermentação'),
  (3, 20, 200, 'g', 'Chocolate semiamargo'),
  (3, 21, 200, 'ml', 'Creme para bater'),
  (3, 22, 1, 'barra', 'Chocolate branco'),
  (3, 23, 1, 'pitada', 'Corante amarelo'),
  (3, 24, 1, 'pitada', 'Corante rosa'),
  (3, 25, 1, 'pitada', 'Corante vermelho'),
  (3, 26, 1, 'barra', 'Frosting de queijo creme');

INSERT INTO receitas_ingredientes (receita_id, ingrediente_id, quantidade, unidade, observacao) VALUES
  (4, 27, 250, 'g', 'Linguiça toscana'),
  (4, 28, 200, 'g', 'Linguiça calabresa'),
  (4, 14, 1, 'unidade', 'Cebola roxa'),
  (4, 30, 2, 'talos', 'Alho-poró'),
  (4, 31, 1, 'colher (sopa)', 'Erva doce'),
  (4, 32, 1, 'colher (chá)', 'Pimenta calabresa'),
  (4, 33, 1, 'raiz', 'Aipo'),
  (4, 34, 100, 'ml', 'Vinho tinto seco'),
  (4, 35, 700, 'g', 'Tomate pelado'),
  (4, 36, 1, 'unidade', 'Cenoura'),
  (4, 37, 2, 'talos', 'Salsão'),
  (4, 13, 4, 'dentes', 'Alho'),
  (4, 38, 40, 'ml', 'Vinho tinto'),
  (4, 39, 240, 'ml', 'Água'),
  (4, 40, 1, 'folha', 'Louro'),
  (4, 41, 1, 'ramo', 'Manjericão'),
  (4, 42, 2, 'colheres (sopa)', 'Azeite'),
  (4, 12, 1, 'colher (chá)', 'Pimenta do reino');

INSERT INTO receitas_ingredientes (receita_id, ingrediente_id, quantidade, unidade, observacao) VALUES
  (5, 43, 200, 'g', 'Farinha de trigo'),
  (5, 44, 20, 'g', 'Açúcar refinado'),
  (5, 45, 2, 'g', 'Cacau em pó'),
  (5, 46, 20, 'g', 'Banha de porco'),
  (5, 47, 0.5, 'unidade', 'Ovo'),
  (5, 48, 60, 'g', 'Vinho Marsala'),
  (5, 49, 30, 'g', 'Vinagre'),
  (5, 50, 400, 'g', 'Ricota fresca'),
  (5, 51, 60, 'g', 'Chocolate ao leite'),
  (5, 52, 0.5, 'unidade', 'Limão siciliano'),
  (5, 53, 30, 'g', 'Cachaça'),
  (5, 54, 1, 'colher (chá)', 'Canela em pó'),
  (5, 55, 1, 'colher (sopa)', 'Gordura vegetal'),
  (5, 56, 30, 'g', 'Vinho branco seco'),
  (5, 57, 1, 'unidade', 'Clara de ovo'),
  (5, 58, 1, 'colher (sopa)', 'Suco de limão'),
  (5, 59, 1, 'colher (sopa)', 'Raspas de limão');

INSERT INTO receitas_ingredientes (receita_id, ingrediente_id, quantidade, unidade, observacao) VALUES
  (6, 60, 30, 'ml', 'Uísque escocês'),
  (6, 61, 30, 'ml', 'Amaretto');


INSERT INTO receitas_ingredientes (receita_id, ingrediente_id, quantidade, unidade, observacao) VALUES
  (7, 62, 450, 'ml', 'Sorvete de creme'),
  (7, 63, 200, 'g', 'Açúcar mascavo'),
  (7, 9, 4, 'colheres (sopa)', 'Manteiga'),
  (7, 54, 1, 'colher (chá)', 'Canela em pó'),
  (7, 64, 0.5, 'colher (chá)', 'Cravo em pó'),
  (7, 65, 0.5, 'colher (chá)', 'Noz-moscada'),
  (7, 66, 1, 'colher (chá)', 'Gengibre em pó'),
  (7, 67, 1, 'dose', 'Espumante'),
  (7, 68, 1, 'dose', 'Refrigerante de creme'),
  (7, 69, 0.5, 'colher (chá)', 'Extrato de baunilha');

INSERT INTO receitas_ingredientes (receita_id, ingrediente_id, quantidade, unidade, observacao) VALUES
  (8, 70, 1, 'kg', 'Carne de gado'),
  (8, 71, 500, 'g', 'Riñones de cordeiro'),
  (8, 14, 2, 'unidades', 'Cebola'),
  (8, 72, 200, 'g', 'Cogumelos'),
  (8, 33, 1, 'raiz', 'Aipo'),
  (8, 73, 300, 'ml', 'Caldo de carne'),
  (8, 74, 100, 'ml', 'Amido de milho'),
  (8, 75, 2, 'colheres (sopa)', 'Óleo vegetal'),
  (8, 8, 1, 'kg', 'Batata'),
  (8, 9, 100, 'g', 'Manteiga'),
  (8, 15, 100, 'ml', 'Leite'),
  (8, 12, 1, 'colher (chá)', 'Sal'),
  (8, 76, 1, 'colher (sopa)', 'Molho Worcestershire'),
  (8, 77, 1, 'colher (chá)', 'Tomilho'),
  (8, 78, 2, 'folhas', 'Folha de louro');

INSERT INTO receitas_ingredientes (receita_id, ingrediente_id, quantidade, unidade, observacao) VALUES
  (9, 79, 6, 'unidades', 'Ovos'),
  (9, 80, 100, 'g', 'Chocolate em pó'),
  (9, 43, 105, 'g', 'Farinha de trigo'),
  (9, 81, 0.5, 'colher (chá)', 'Fermento químico'),
  (9, 82, 1, 'colher (chá)', 'Bicarbonato de sódio'),
  (9, 58, 0.5, 'colher (chá)', 'Suco de limão'),
  (9, 15, 120, 'ml', 'Leite morno'),
  (9, 83, 1, 'unidade', 'Ovo'),
  (9, 84, 60, 'ml', 'Óleo'),
  (9, 85, 80, 'ml', 'Café'),
  (9, 20, 250, 'g', 'Chocolate semiamargo'),
  (9, 22, 250, 'g', 'Chocolate branco'),
  (9, 86, 150, 'g', 'Cream cheese'),
  (9, 10, 100, 'ml', 'Creme de leite'),
  (9, 87, 1, 'pitada', 'Corante gel rosa'),
  (9, 88, 1, 'pitada', 'Corante gel verde');

INSERT INTO receitas_ingredientes (receita_id, ingrediente_id, quantidade, unidade, observacao) VALUES
  (10, 9, 200, 'g', 'Manteiga'),
  (10, 89, 1, 'xícara', 'Açúcar cristal'),
  (10, 5, 1, 'xícara', 'Açúcar demerara'),
  (10, 83, 1, 'unidade', 'Ovo'),
  (10, 69, 2, 'colheres (sopa)', 'Extrato de baunilha'),
  (10, 43, 2.5, 'xícaras', 'Farinha de trigo'),
  (10, 90, 1, 'colher (chá)', 'Fermento'),
  (10, 91, 1, 'xícara', 'Gotas de chocolate'),
  (10, 22, 1, 'xícara', 'Gotas de chocolate branco'),
  (10, 92, 1, 'pitada', 'Corante alimentício azul'),
  (10, 93, 1, 'pitada', 'Corante alimentício violeta'),
  (10, 74, 3, 'colheres (sopa)', 'Amido de milho'),
  (10, 11, 1, 'pitada', 'Sal'),
  (10, 82, 0.5, 'colher (chá)', 'Bicarbonato de sódio');

INSERT INTO receitas_ingredientes (receita_id, ingrediente_id, quantidade, unidade, observacao) VALUES
  (11, 94, 3, 'unidades', 'Abacate'),
  (11, 95, 2, 'unidades', 'Tomate'),
  (11, 96, 3, 'colheres (sopa)', 'Óleo de oliva'),
  (11, 97, 1, 'colher (sopa)', 'Erco de coentro'),
  (11, 14, 1, 'unidade', 'Cebola'),
  (11, 98, 1, 'colher (chá)', 'Cúrcuma'),
  (11, 99, 200, 'g', 'Leite condensado'),
  (11, 100, 100, 'g', 'Achocolatado granulado'),
  (11, 101, 50, 'g', 'Castanha-do-pará granulado'),
  (11, 102, 1, 'xícara', 'Leite de vaca');

INSERT INTO receitas_ingredientes (receita_id, ingrediente_id, quantidade, unidade, observacao) VALUES
  (12, 99, 200, 'ml', 'Leite condensado'),
  (12, 9, 100, 'g', 'Manteiga'),
  (12, 79, 2, 'unidades', 'Ovos'),
  (12, 17, 200, 'g', 'Açúcar'),
  (12, 10, 200, 'ml', 'Creme de leite'),
  (12, 100, 50, 'g', 'Achocolatado granulado'),
  (12, 101, 30, 'g', 'Castanha-do-pará granulado'),
  (12, 102, 250, 'ml', 'Leite de vaca'),
  (12, 69, 1, 'colher (chá)', 'Extrato de baunilha');
  CONSTRAINT receitas_ingredientes_receita_id_fkey FOREIGN KEY (receita_id) REFERENCES public.receitas(id),
  CONSTRAINT receitas_ingredientes_ingrediente_id_fkey FOREIGN KEY (ingrediente_id) REFERENCES public.ingredientes(id)
);
