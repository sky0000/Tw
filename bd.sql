drop table perfum cascade constraints;
drop table users cascade constraints;
drop table profil cascade constraints;
drop table voucher cascade constraints;
drop table comanda cascade constraints;
drop table stocuri cascade constraints;
/
create table perfum ( id number(6) ,
                      nume varchar2(30),
                      pret number,
                      cantitate number(6),
                      familia varchar2(20),
                      firma varchar2(20),
                      gramaj number,
                      anotimp varchar2(15),
                      ocazie varchar2(20),
                      bfile_desc varchar2(30),
                      bfile_loc bfile,
                      bfile_type varchar2(4),
                      primary key  (id,cantitate))
/



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