create database if not exists dbEtab;
use dbEtab;
create table
Etablissement(
code_etab int auto_increment primary key,
 Nom_Etab varchar(250),
 Adresse_etab varchar(250), 
 Tel_etab varchar(250));
 
 insert into etablissement(code_etab, Nom_Etab, Adresse_etab, Tel_etab) values(null,"ISMO TETOUAN","mARTIL","066142538");
 insert into etablissement(code_etab, Nom_Etab, Adresse_etab, Tel_etab) values(null,"ROUTE SEBTA","TETOUAN","075963214");
 insert into etablissement(code_etab, Nom_Etab, Adresse_etab, Tel_etab) values(null,"iSTA MATAR","TETOUAN","068597412");
 
 select * from etablissement;