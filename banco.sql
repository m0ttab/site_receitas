CREATE TABLE receitas(
    id numeric AUTO-INCREMENT NOT NULL,
    nome varchar(300) NOT NULL,
    autor varchar(150) NOT NULL,
    tempoprep varchar(30) NOT NULL,
    tipo varchar(20) NOT NULL,
    ingredientes varchar(1500) NOT NULL,
    pais varchar(50) NOT NULL,
    mododeprep varchar(1500) NOT NULL,
    image varchar(100) NOT NULL
)

CREATE TABLE usuarios(
    id numeric AUTO-INCREMENT NOT NULL,
    nome varchar(300) NOT NULL,
    nickname varchar(150) NOT NULL,
    senha varchar(50) NOT NULL,
    genero varchar(20) NOT NULL,
    cidade varchar(150) NOT NULL,
    pais varchar(50) NOT NULL,
    prefali varchar(100) NOT NULL,
    condali varchar(100) NOT NULL,
    image varchar(100) NOT NULL
)

CREATE TABLE avaliacoes(
    id numeric AUTO-INCREMENT NOT NULL,
    receita varchar(300) NOT NULL,
    estrelas numeric(5) NOT NULL,
    avaliado varchar(150) NOT NULL,
    avaliador varchar(150) NOT NULL,
    comentario varchar(1500) NOT NULL
)

CREATE TABLE comidas(
    id numeric AUTO-INCREMENT NOT NULL,
    nome varchar(300) NOT NULL
)

CREATE TABLE bebidas(
    id numeric AUTO-INCREMENT NOT NULL,
    nome varchar(300) NOT NULL
)

INSERT INTO receitas (nome, autor, tempoprep, tipo, ingredientes, pais, mododeprep, image)
VALUES ($nome, $autor, $tempoprep, $tipo, $ingredientes, $pais, $mododeprep, $image); 


INSERT INTO usuarios (nome, nickname, senha, genero, cidade, pais, prefali, condali, image)
VALUES ($nome, $nickname, $senha, $genero, $cidade, $pais, $prefali, $condali, $image); 

INSERT INTO avaliacoes (receita, estrelas, avaliado, avaliador, comentario)
VALUES ($receita, $estrelas, $avaliado, $avaliador, $comentario); 
