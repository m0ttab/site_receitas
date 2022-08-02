USE siterec;

DROP TABLE if exists receitas;

CREATE TABLE receitas (
    id INT AUTO-INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    tempo_preparo INT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(600) NOT NULL,
    pais VARCHAR(80) NOT NULL,
    modo_preparo VARCHAR(800) NOT NULL,
    aviso_alergicos CHAR(1) NOT NULL,
    foto VARCHAR NOT NULL
    );

DROP TABLE if exists usuarios;

CREATE TABLE usuarios (
    nome VARCHAR(100) NOT NULL,
    nickname VARCHAR(100) NOT NULL,
    senha VARCHAR(15) NOT NULL,
    genero CHAR(3) NOT NULL,
    cidade VARCHAR(80) NOT NULL,
    pais VARCHAR(80) NOT NULL,
    pref_alimentar CHAR(4) NOT NULL,
    cond_alimentar_esp VARCHAR(200) NOT NULL,
    foto VARCHAR NOT NULL
    );
    
DROP TABLE if exists avaliacoes;
    
CREATE TABLE avaliacoes(
    id numeric AUTO-INCREMENT NOT NULL,
    receita varchar(100) NOT NULL,
    estrelas numeric(5) NOT NULL,
    avaliado varchar(100) NOT NULL,
    avaliador varchar(100) NOT NULL,
    comentario varchar(300) NOT NULL
)

DROP TABLE if exists comidas;

CREATE TABLE comidas(
    id numeric AUTO-INCREMENT NOT NULL,
    nome varchar(300) NOT NULL
)

DROP TABLE if exists bebidas;

CREATE TABLE bebidas(
    id numeric AUTO-INCREMENT NOT NULL,
    nome varchar(300) NOT NULL
)

INSERT INTO receitas (nome, autor, tempo_preparo, tipo, ingredientes, pais, modo_preparo, aviso_alergicos, foto)
VALUES ($nome, $autor, $tempo_preparo, $tipo, $ingredientes, $pais, $modo_preparo, $aviso_alergicos, $foto); 

INSERT INTO usuarios (nome, nickname, senha, genero, cidade, pais, pref_alimentar, cond_alimentar_esp, foto)
VALUES ($nome, $nickname, $senha, $genero, $cidade, $pais, $pref_alimentar, $cond_alimentar_esp, $foto); 

INSERT INTO avaliacoes (receita, estrelas, avaliado, avaliador, comentario)
VALUES ($receita, $estrelas, $avaliado, $avaliador, $comentario); 
