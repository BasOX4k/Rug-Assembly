
CREATE TABLE tapis_accessoires
(
  Id_accessoires INT NOT NULL AUTO_INCREMENT,
  Id_produit     INT NOT NULL,
  PRIMARY KEY (Id_accessoires)
);

ALTER TABLE tapis_accessoires
  ADD CONSTRAINT UQ_Id_accessoires UNIQUE (Id_accessoires);

CREATE TABLE tapis_fils
(
  Id_laines  INT         NOT NULL AUTO_INCREMENT,
  type       VARCHAR(50) NULL    ,
  couleur    VARCHAR(50) NULL    ,
  Id_produit INT         NOT NULL,
  PRIMARY KEY (Id_laines)
);

ALTER TABLE tapis_fils
  ADD CONSTRAINT UQ_Id_laines UNIQUE (Id_laines);

CREATE TABLE tapis_panier
(
  Id_panier      INT NOT NULL AUTO_INCREMENT,
  Id_utilisateur INT NOT NULL,
  Id_produit     INT NOT NULL,
  PRIMARY KEY (Id_panier)
);

ALTER TABLE tapis_panier
  ADD CONSTRAINT UQ_Id_panier UNIQUE (Id_panier);

CREATE TABLE tapis_pistolets
(
  Id_pistolets INT         NOT NULL AUTO_INCREMENT,
  type         VARCHAR(50) NULL    ,
  Id_produit   INT         NOT NULL,
  PRIMARY KEY (Id_pistolets)
);

ALTER TABLE tapis_pistolets
  ADD CONSTRAINT UQ_Id_pistolets UNIQUE (Id_pistolets);

CREATE TABLE tapis_produits
(
  Id_produit  INT          NOT NULL AUTO_INCREMENT,
  nom         VARCHAR(50)  NOT NULL,
  description VARCHAR(250) NOT NULL,
  image       VARCHAR(380) NOT NULL,
  prix        INTEGER      NOT NULL,
  PRIMARY KEY (Id_produit)
);

ALTER TABLE tapis_produits
  ADD CONSTRAINT UQ_Id_produit UNIQUE (Id_produit);

CREATE TABLE tapis_roles
(
  Id_role INT         NOT NULL AUTO_INCREMENT,
  nom     VARCHAR(50) NULL    ,
  PRIMARY KEY (Id_role)
);

ALTER TABLE tapis_roles
  ADD CONSTRAINT UQ_Id_role UNIQUE (Id_role);

CREATE TABLE tapis_tapis
(
  Id_tapis   INT NOT NULL AUTO_INCREMENT,
  Id_produit INT NOT NULL,
  PRIMARY KEY (Id_tapis)
);

ALTER TABLE tapis_tapis
  ADD CONSTRAINT UQ_Id_tapis UNIQUE (Id_tapis);

CREATE TABLE tapis_tissus
(
  Id_tissus  INT         NOT NULL AUTO_INCREMENT,
  type       VARCHAR(50) NULL    ,
  qualité    VARCHAR(50) NULL    ,
  taille     INT         NULL    ,
  Id_produit INT         NOT NULL,
  PRIMARY KEY (Id_tissus)
);

ALTER TABLE tapis_tissus
  ADD CONSTRAINT UQ_Id_tissus UNIQUE (Id_tissus);

ALTER TABLE tapis_tissus
  ADD CONSTRAINT UQ_Id_produit UNIQUE (Id_produit);

CREATE TABLE tapis_tondeuses
(
  Id_tondeuses INT NOT NULL AUTO_INCREMENT,
  Id_produit   INT NOT NULL,
  PRIMARY KEY (Id_tondeuses)
);

ALTER TABLE tapis_tondeuses
  ADD CONSTRAINT UQ_Id_tondeuses UNIQUE (Id_tondeuses);

CREATE TABLE tapis_utilisateurs
(
  Id_utilisateur INT          NOT NULL AUTO_INCREMENT,
  nom            VARCHAR(50)  NOT NULL,
  prenom         VARCHAR(50)  NOT NULL,
  mail           VARCHAR(150) NOT NULL,
  mdp            VARCHAR(160) NOT NULL,
  telephone      INT          NOT NULL,
  Id_role        INT          NOT NULL,
  PRIMARY KEY (Id_utilisateur)
);

ALTER TABLE tapis_utilisateurs
  ADD CONSTRAINT UQ_Id_utilisateur UNIQUE (Id_utilisateur);

ALTER TABLE tapis_fils
  ADD CONSTRAINT FK_tapis_produits_TO_tapis_fils
    FOREIGN KEY (Id_produit)
    REFERENCES tapis_produits (Id_produit);

ALTER TABLE tapis_tissus
  ADD CONSTRAINT FK_tapis_produits_TO_tapis_tissus
    FOREIGN KEY (Id_produit)
    REFERENCES tapis_produits (Id_produit);

ALTER TABLE tapis_accessoires
  ADD CONSTRAINT FK_tapis_produits_TO_tapis_accessoires
    FOREIGN KEY (Id_produit)
    REFERENCES tapis_produits (Id_produit);

ALTER TABLE tapis_tondeuses
  ADD CONSTRAINT FK_tapis_produits_TO_tapis_tondeuses
    FOREIGN KEY (Id_produit)
    REFERENCES tapis_produits (Id_produit);

ALTER TABLE tapis_pistolets
  ADD CONSTRAINT FK_tapis_produits_TO_tapis_pistolets
    FOREIGN KEY (Id_produit)
    REFERENCES tapis_produits (Id_produit);

ALTER TABLE tapis_tapis
  ADD CONSTRAINT FK_tapis_produits_TO_tapis_tapis
    FOREIGN KEY (Id_produit)
    REFERENCES tapis_produits (Id_produit);

ALTER TABLE tapis_utilisateurs
  ADD CONSTRAINT FK_tapis_roles_TO_tapis_utilisateurs
    FOREIGN KEY (Id_role)
    REFERENCES tapis_roles (Id_role);

ALTER TABLE tapis_panier
  ADD CONSTRAINT FK_tapis_utilisateurs_TO_tapis_panier
    FOREIGN KEY (Id_utilisateur)
    REFERENCES tapis_utilisateurs (Id_utilisateur);

ALTER TABLE tapis_panier
  ADD CONSTRAINT FK_tapis_produits_TO_tapis_panier
    FOREIGN KEY (Id_produit)
    REFERENCES tapis_produits (Id_produit);
