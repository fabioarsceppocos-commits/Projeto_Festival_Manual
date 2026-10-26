CREATE SCHEMA IF NOT EXISTS festival;

CREATE TABLE IF NOT EXISTS festival.Colaborador (
  idColaborador INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nomeColaborador VARCHAR(90) NOT NULL,
  emailColaborador VARCHAR(45) NOT NULL UNIQUE,
  senhaColaborador VARCHAR(255) NOT NULL );
  
CREATE TABLE IF NOT EXISTS festival.Espaco (
  idEspaco INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nomeEspaco VARCHAR(45) NOT NULL,
  descricaoEspaco VARCHAR(90) NOT NULL,
  capacidadeEspaco INT UNSIGNED NOT NULL);


CREATE TABLE IF NOT EXISTS festival.Atividade (
  idAtividade  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nomeAtividade VARCHAR(45) NOT NULL,
  descricaoAtividade VARCHAR(90) NOT NULL,
  dataAtividade DATE NOT NULL,
  horaInicioAtividade TIME NOT NULL,
  horaFimAtividade TIME NOT NULL,
  capacidadeMaxima INT NOT NULL,
  Espaco_idEspaco INT NOT NULL,
  FOREIGN KEY (Espaco_idEspaco)
  REFERENCES festival.Espaco (idEspaco)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION);
  
  CREATE TABLE IF NOT EXISTS festival.Participante (
  idParticipante INT PRIMARY KEY  NOT NULL AUTO_INCREMENT,
  nomeParticipante VARCHAR(90) NOT NULL,
  emailParticipante VARCHAR(45) NOT NULL,
  telefoneParticipante VARCHAR(20) NOT NULL,
  cpfParticipante VARCHAR(11) NOT NULL UNIQUE);
  
  
CREATE TABLE IF NOT EXISTS festival.Inscricao (
  idInscricao INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  dataInscricao DATE NOT NULL,
  Participante_idParticipante INT NOT NULL,
  Atividade_idAtividade INT NOT NULL,
  UNIQUE INDEX uk_inscricao_participante_atividade (Participante_idParticipante ASC, Atividade_idAtividade ASC) VISIBLE,
  FOREIGN KEY (Participante_idParticipante)
  REFERENCES festival.Participante (idParticipante)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
  FOREIGN KEY (Atividade_idAtividade)
  REFERENCES festival.Atividade (idAtividade)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION);
  
  