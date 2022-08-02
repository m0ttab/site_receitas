use siterec;

drop table if exists receitas;

create receitas (
    nome VARCHAR(100),
    autor VARCHAR(100),
    tempo_preparo INT,
    tipo VARCHAR(50),
    ingredientes VARCHAR(600),
    pais VARCHAR(80),
    modo_preparo VARCHAR(800),
    aviso_alergicos CHAR(1),
    foto VARCHAR
    );

drop table if exists usuarios;

create usuarios (
    nome VARCHAR(100),
    nickname VARCHAR(100),
    senha VARCHAR(15),
    genero CHAR(3),
    cidade VARCHAR(80),
    pais VARCHAR(80),
    pref_alimentar CHAR(4),
    cond_alimentar_esp VARCHAR(200),
    foto VARCHAR
    );
    
CREATE TABLE avaliacoes(
    id numeric AUTO-INCREMENT NOT NULL,
    receita varchar(100) NOT NULL,
    estrelas numeric(5) NOT NULL,
    avaliado varchar(100) NOT NULL,
    avaliador varchar(100) NOT NULL,
    comentario varchar(300) NOT NULL
)

CREATE TABLE comidas(
    id numeric AUTO-INCREMENT NOT NULL,
    nome varchar(300) NOT NULL
)

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
