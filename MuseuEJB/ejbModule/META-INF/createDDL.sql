CREATE TABLE USUARIO (ID VARCHAR(255) NOT NULL, EMAIL VARCHAR(255) UNIQUE, NOME VARCHAR(255), SENHA VARCHAR(255), PRIMARY KEY (ID));
CREATE TABLE CONFIGURACAO (ID VARCHAR(255) NOT NULL, PADRAO VARCHAR(255), ACERVO VARCHAR(255), AJUDEOMUSEU VARCHAR(255), CONTENTTYPELOGO VARCHAR(255), EMAILPORTAL VARCHAR(255), FACEBOOK VARCHAR(255), FAUNA VARCHAR(255), FLICKR VARCHAR(255), FLORA VARCHAR(255), ITEM1 VARCHAR(255), ITEM10 VARCHAR(255), ITEM11 VARCHAR(255), ITEM12 VARCHAR(255), ITEM13 VARCHAR(255), ITEM14 VARCHAR(255), ITEM15 VARCHAR(255), ITEM16 VARCHAR(255), ITEM17 VARCHAR(255), ITEM18 VARCHAR(255), ITEM19 VARCHAR(255), ITEM2 VARCHAR(255), ITEM20 VARCHAR(255), ITEM21 VARCHAR(255), ITEM22 VARCHAR(255), ITEM23 VARCHAR(255), ITEM24 VARCHAR(255), ITEM25 VARCHAR(255), ITEM3 VARCHAR(255), ITEM4 VARCHAR(255), ITEM5 VARCHAR(255), ITEM6 VARCHAR(255), ITEM7 VARCHAR(255), ITEM8 VARCHAR(255), ITEM9 VARCHAR(255), LOGO BYTEA, MEMORIAVIRTUALLOGIN VARCHAR(255), MEMORIAVIRTUALSENHA VARCHAR(255), NOMEINSTITUICAO VARCHAR(255), NOMEINSTITUICAOMEMORIA VARCHAR(255), TAGEVENTS VARCHAR(255), TAGNEWS VARCHAR(255), TAGVOCESABIA VARCHAR(255), TWITTER VARCHAR(255), URLFREEGEOIP VARCHAR(255), URLINSTITUICAO VARCHAR(255), URLMEMORIA VARCHAR(255), URLPORTAL VARCHAR(255), URLWORDPRESS VARCHAR(255), YOUTUBE VARCHAR(255), PRIMARY KEY (ID));
CREATE TABLE SLIDE (ID VARCHAR(255) NOT NULL, CONTENT BYTEA, CONTENTTYPE VARCHAR(255), LINK VARCHAR(255), ORDEM INTEGER, TEXTO VARCHAR(255), TITULO VARCHAR(255), CONFIGURACAO_ID VARCHAR(255), PRIMARY KEY (ID));
CREATE TABLE ACESSO (ID VARCHAR(255) NOT NULL, ACESSDATE DATE, AREACODE VARCHAR(255), CITY VARCHAR(255), COUNTRYCODE VARCHAR(255), COUNTRYNAME VARCHAR(255), IP VARCHAR(255), LATITUDE VARCHAR(255), LONGITUDE VARCHAR(255), METROCODE VARCHAR(255), REGIONCODE VARCHAR(255), REGIONNAME VARCHAR(255), ZIPCODE VARCHAR(255), PRIMARY KEY (ID));
ALTER TABLE SLIDE ADD CONSTRAINT FK_SLIDE_CONFIGURACAO_ID FOREIGN KEY (CONFIGURACAO_ID) REFERENCES CONFIGURACAO (ID);
CREATE SEQUENCE USUARIO_SEQ START WITH 1;
CREATE SEQUENCE SLIDE_SEQ START WITH 1;
CREATE SEQUENCE ACESSO_SEQ START WITH 1;