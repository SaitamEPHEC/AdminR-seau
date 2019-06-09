CREATE USER 'admin'@'localhost' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost';
CREATE DATABASE db;
USE db;

create table CLIENT
(
NCLI char(4) not null,
NOM varchar(12) not null,
ADRESSE varchar(20) not null,
LOCALITE varchar(12) not null,
CAT char(2),
COMPTE decimal(9,2) not null,
primary key (NCLI));

create table PRODUIT
(
NPRO char(5) not null,
LIBELLE varchar(20) not null,
PRIX decimal(5,0) not null,
QSTOCK decimal(6,0) not null,
primary key (NPRO));

create table COMMANDE
(
NCOM char(5) not null,
NCLI char(4) not null,
DATECOM datetime not null,
primary key (NCOM),
foreign key (NCLI) references CLIENT(NCLI));

create table DETAIL
(
NCOM char(5) not null,
NPRO char(5) not null,
QCOM decimal(4,0) not null,
primary key (NCOM,NPRO),
foreign key (NCOM) references COMMANDE(NCOM),
foreign key (NPRO) references PRODUIT(NPRO));

insert into CLIENT values ('B112','HANSENNE','13, a. Dumont','Poitiers','C1',1250);

insert into CLIENT values ('C123','MERCIER'     ,'25, r. Lemaitre'     ,'Namur'    ,'C1',-2300);

insert into CLIENT values ('B332','MONTI'       ,'112, r. Neuve'       ,'Geneve'   ,'B2',0);

insert into CLIENT values ('F010','TOUSSAINT'   ,'5, r. Godefroid'     ,'Poitiers' ,'C1',0);

insert into CLIENT values ('K111','VANBIST'     ,'180, r. Florimont'   ,'Lille'    ,'B1',720);

insert into CLIENT values ('S127','VANDERKA'    ,'3, av. des Roses'    ,'Namur'    ,'C1',-4580);

insert into CLIENT values ('B512','GILLET'      ,'14, r. de l''Ete'    ,'Toulouse' ,'B1',-8700);

insert into CLIENT values ('B062','GOFFIN'      ,'72, r. de la Gare'   ,'Namur'    ,'B2',-3200);

insert into CLIENT values ('C400','FERARD'      ,'65, r. du Tertre'    ,'Poitiers' ,'B2',350);

insert into CLIENT values ('C003','AVRON'       ,'8, ch. de la Cure'   ,'Toulouse' ,'B1',-1700);

insert into CLIENT values ('K729','NEUMAN'      ,'40, r. Bransart'     ,'Toulouse' ,NULL,0);

insert into CLIENT values ('F011','PONCELET'    ,'17, Clos des Erables','Toulouse' ,'B2',0);

insert into CLIENT values ('L422','FRANCK'      ,'60, r. de Wepion'    ,'Namur'    ,'C1',0);

insert into CLIENT values ('S712','GUILLAUME'   ,'14a, ch. des Roses'  ,'Paris'    ,'B1',0);

insert into CLIENT values ('D063','MERCIER'       ,'201, bvd du Nord'  ,'Toulouse' ,NULL,-2250);

insert into CLIENT values ('F400','JACOB'       ,'78, ch. du Moulin'   ,'Bruxelles','C2',0);


insert into PRODUIT values ('CS262','MAISON',  75,  45);

insert into PRODUIT values ('CS264','CHEVAL', 120,2690);

insert into PRODUIT values ('CS464','ARBRE', 220, 450);

insert into PRODUIT values ('PA45' ,'POMPIER',105, 580);

insert into PRODUIT values ('PA60' ,'DAUPHIN', 95, 134);

insert into PRODUIT values ('PH222','VOITURE',  230, 782);

insert into PRODUIT values ('PS222','ASTRONAUTE',  185,1220);



insert into COMMANDE values ('30178','K111','20081221');

insert into COMMANDE values ('30179','C400','20081222');

insert into COMMANDE values ('30182','S127','20081223');

insert into COMMANDE values ('30184','C400','20081223');

insert into COMMANDE values ('30185','F011','20090102');

insert into COMMANDE values ('30186','C400','20090102');

insert into COMMANDE values ('30188','B512','20090103');



insert into DETAIL values ('30178','CS464',25);

insert into DETAIL values ('30179','PA60',20);

insert into DETAIL values ('30179','CS262',60);

insert into DETAIL values ('30182','PA60',30);

insert into DETAIL values ('30184','CS464',120);

insert into DETAIL values ('30184','PA45',20);

insert into DETAIL values ('30185','PA60',15);

insert into DETAIL values ('30185','PS222',600);

insert into DETAIL values ('30185','CS464',260);

insert into DETAIL values ('30186','PA45',3);

insert into DETAIL values ('30188','PA60',70);

insert into DETAIL values ('30188','PH222',92);

insert into DETAIL values ('30188','CS464',180);

insert into DETAIL values ('30188','PA45',22);
