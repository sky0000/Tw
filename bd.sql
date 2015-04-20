drop table perfum cascade constraints;
drop table users cascade constraints;
drop table profil cascade constraints;
drop table voucher cascade constraints;
drop table comanda cascade constraints;
drop table stocuri cascade constraints;


create table perfum ( id number(6) ,
                      nume varchar2(100),
                      pret number,
                      cantitate number(6),
                      categoria varchar2(50),
                      firma varchar2(50),
                      gramaj number,
                      anotimp varchar2(15),
                      ocazie varchar2(30),
                      primary key  (id,cantitate))
/

INSERT INTO PERFUM VALUES(864001,'Chopard Wish', 91,10,'Wish', 'Chopard',75,'Primavara', 'Zi de nastere')
/
INSERT INTO PERFUM VALUES(864002,'Gloria Vanderbilt Vanderbilt', 47,5,'Vanderbilt', 'Gloria Vanderbilt', 100, 'Vara', 'Hram')
/
INSERT INTO PERFUM VALUES(864003,'Calvin Klein Euphoria', 158, 15, 'Euphoria','Calvin Klein', 75, 'Iarna', 'Craciun')
/
INSERT INTO PERFUM VALUES(864004,'Lacoste Pour Femme', 115, 7, 'Pour Femme', 'Lacoste', 35, 'Toamna', 'Zi de nastere')
/
INSERT INTO PERFUM VALUES(864005,'Armani Code', 201, 3, 'Code', 'Armani', 100, 'Primavara', 'Paste')
/
INSERT INTO PERFUM VALUES(864006,'Armani Mania for Woman', 184, 4, 'For Woman','Armani', 75, 'Vara', 'Zi de nastere')
/
INSERT INTO PERFUM VALUES(864007,'Versace pour Homme', 231, 6, 'Pour Homme','Versace', 100, 'Toamna', 'Craciun')
/
INSERT INTO PERFUM VALUES(864008,'Dior Dior Homme Intense', 157, 7, 'Dior Homme Intense', 'Dior', 75, 'Iarna', 'Craciun')
/
INSERT INTO PERFUM VALUES(864009,'Calvin Klein Eternity for Men Summer', 210, 12,'Eternity for Men Summer', 'Calvin Klein', 100, 'Vara', 'Zi de nastere')
/
INSERT INTO PERFUM VALUES(864010,'Hugo Boss Hugo One Tree', 159, 3,'Hugo One Tree', 'Hugo Boss', 35, 'Primavara', 'Paste'); 
/

Select * from perfum;

create table users (id varchar2(30) primary key ,
                    password varchar2(30) not null )
/


create table profil (id varchar2(30)  references  users(id)  ,
                      adresa varchar2(200) null,
                      preferinta_firma varchar2(20) null,
                      preferinta_gramaj number null )
/


create table voucher(id varchar2(30)  references users(id) ,
                      cod number (6) not null, 
                      reducere number (2) not null, 
                      pentru_produsul varchar2(30) null )
/


create table comanda ( id varchar2(30)  references users(id) ,
                      produs varchar2(20) ,
                      cantitate number(3),
                      pret number(6),
                      stare varchar2(20)) 
/

create table stocuri (id number(6) ,
                      unitati_vandute number(6),
                      unitati number(6),--ar trebuie un fk de la cantitatea de la perfum 
                      unitati_disponibile number(6),
                      foreign key(id ,unitati )  references perfum(id,cantitate) )
/