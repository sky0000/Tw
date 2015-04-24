drop table perfum cascade constraints;
drop table users cascade constraints;
drop table profil cascade constraints;
drop table voucher cascade constraints;
drop table comanda cascade constraints;
drop table stocuri cascade constraints;
/
create table perfum ( id number(6) ,
                      nume varchar2(1000),
                      pret number,
                      cantitate number(6),
                      colectie varchar2(500),
                      firma varchar2(20),
                      gramaj number,
                      anotimp varchar2(15),
                      ocazie varchar2(20),
                      primary key  (id,cantitate,nume))
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
                      pentru_produsul varchar2(500) null )
/


create table comanda ( id varchar2(30)  references users(id) ,
                      data_comanda date,
                      id_produs number(6),
                      produs varchar2(50) ,
                      colectie varchar2(500),
                      firma varchar2(20),
                      cantitate number(3),
                      pret number(6),
                      stare varchar2(20)) 
/


create table stocuri (id number(6) ,
                      id_parfum number(6),
                      nume_produs varchar2(100),
                      unitati_vandute number(6) ,
                      unitati number(6),
                      unitati_disponibile number(6),
                      foreign key(id_parfum ,unitati,nume_produs )  references perfum(id,cantitate,nume))
/
create or replace procedure populeazaStocuri(nrStocuri in number) is

  cursor parfum is
      select id, nume, cantitate 
      from perfum ;

  cursor produs is 
      select id_produs, produs, cantitate,data_comanda
      from comanda;

  nr_parfum number:=0;
  v_id number(6):=123001;
  ok number:=1;
  begin 

      for i in 1..nrStocuri loop
        for i in parfum loop
          for j in produs loop
          if ok = 1 then
            if i.id =j.id_produs and j.data_comanda  between to_date('01-Jan-15', 'DD-MM-YY') and to_date('31-Jan-15', 'DD-MM-YY')then
              nr_parfum:=nr_parfum+1;
            end if;
          elsif  ok= 2 then
            if i.id =j.id_produs and j.data_comanda between to_date('01-Feb-15', 'DD-MM-YY') and to_date('28-Feb-15', 'DD-MM-YY')then
              nr_parfum:=nr_parfum+1;
            end if;
          elsif ok= 3 then
            if i.id =j.id_produs and j.data_comanda between to_date('01-Mar-15', 'DD-MM-YY') and to_date('31-Mar-15', 'DD-MM-YY')then
              nr_parfum:=nr_parfum+1;
            end if;
            elsif ok= 4 then
            if i.id =j.id_produs and j.data_comanda between to_date('01-Apr-15', 'DD-MM-YY') and to_date('30-Apr-15', 'DD-MM-YY')then
              nr_parfum:=nr_parfum+1;
            end if;
            elsif ok= 5 then
            if i.id =j.id_produs and j.data_comanda between to_date('01-May-15', 'DD-MM-YY') and to_date('31-May-15', 'DD-MM-YY')then 
              nr_parfum:=nr_parfum+1;
            end if;
            elsif ok= 6 then
            if i.id =j.id_produs and j.data_comanda between to_date('01-Jun-15', 'DD-MM-YY') and to_date('30-Jun-15', 'DD-MM-YY')then  
              nr_parfum:=nr_parfum+1;
            end if;
            elsif ok= 7 then
            if i.id =j.id_produs and j.data_comanda between to_date('01-Jul-15', 'DD-MM-YY') and to_date('31-Jul-15', 'DD-MM-YY')then 
              nr_parfum:=nr_parfum+1;
            end if;
            elsif ok= 8 then
            if i.id =j.id_produs and j.data_comanda between  to_date('01-Aug-15', 'DD-MM-YY') and to_date('31-Aug-15', 'DD-MM-YY')then 
              nr_parfum:=nr_parfum+1;
            end if;
            elsif ok= 9 then
            if i.id =j.id_produs and j.data_comanda between to_date('01-Sep-15', 'DD-MM-YY') and to_date('30-Sep-15', 'DD-MM-YY')then
              nr_parfum:=nr_parfum+1;
            end if;
            elsif ok= 10 then
            if i.id =j.id_produs and j.data_comanda between to_date('01-Oct-15', 'DD-MM-YY') and to_date('31-Oct-15', 'DD-MM-YY')then 
              nr_parfum:=nr_parfum+1;
            end if;
            elsif ok= 11 then
            if i.id =j.id_produs and j.data_comanda between to_date('01-Nov-15', 'DD-MM-YY') and to_date('30-Nov-15', 'DD-MM-YY')then 
              nr_parfum:=nr_parfum+1;
            end if;
            elsif ok= 12 then
            if i.id =j.id_produs and j.data_comanda between to_date('01-Dec-15', 'DD-MM-YY') and to_date('31-Dec-15', 'DD-MM-YY')then 
              nr_parfum:=nr_parfum+1;
            end if;
          end if;
          end loop;
          insert into stocuri values(v_id,i.id,i.nume,nr_parfum,i.cantitate,i.cantitate-nr_parfum);
          nr_parfum:=0;
         end loop; 
         v_id:=v_id+1;
         ok:=ok+1;
      end loop;
end populeazaStocuri;
/

declare
  begin
    populeazaStocuri(12);
  end;
/


Select * from stocuri;
/
Select * from comanda
where data_comanda between to_date('01-Jan-15', 'DD-MM-YY') and to_date('31-Jan-15', 'DD-MM-YY');
/
insert into  users values('andrei','1234')
/
insert into  users values('adriana','1234')
/
insert into  users values('george','1234')
/
insert into  users values('lavinia','1234')
/
insert into  users values('andra','1234')
/
insert into  users values('vlad','1234')
/
insert into  users values('paul','1234')
/
insert into  users values('cosmin','1234')
/
insert into  users values('larisa','1234')
/
insert into  users values('andreea','1234')
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
INSERT INTO PERFUM VALUES(864010,'Hugo Boss Hugo One Tree', 159, 3,'Hugo One Tree', 'Hugo Boss', 35, 'Primavara', 'Paste')
/



insert into profil values( 'andrei', 'Sabaoani','Calvin Klein', 100)
/
insert into profil values('adriana', 'Roman', 'Lacoste', 35)
/
insert into profil values('george', 'Roman', 'Versace', 100)
/
insert into profil values('lavinia','Iasi','Gloria Vanderbilt',100)
/
insert into profil values('andra','Vaslui','Armani',75)
/
insert into profil values('vlad','Brasov','Hugo Boss',35)
/
insert into profil values('paul','Bucuresti', 'Dior',75)
/
insert into profil values('cosmin','Bacau', 'Versace',100)
/
insert into profil values('larisa','Iasi','Chopard',75)
/
insert into profil values('andreea','Timisoara', 'Calvin Klein',75)
/

create or replace procedure populeazaComanda(nr in number) is

  cursor useri is
      select id 
      from users ;

  cursor parfum is 
      select nume,id,colectie,firma,pret 
      from perfum;

  numeUser varchar2(30);
  numeParfum varchar2(1000);
  numeColectie varchar2(500);
  numeFirma varchar2(50);
  v_id number(6);
  v_pret number(4);
  user_rand number;
  ok_user number;
  parfum_rand number;
  ok_parfum number;
  V_DATA date;
  begin 

      for i in 1..nr loop
        SELECT   TO_DATE (
               TRUNC(DBMS_RANDOM.VALUE (
                        TO_CHAR (TO_DATE ('1-jan-2015'), 'J'),
                        TO_CHAR (TO_DATE ('31-dec-2015'), 'J')
                     )), 'J' )
        INTO   V_DATA
        FROM   DUAL;
        ok_user:=1;
        ok_parfum:=1;
        user_rand:=round(DBMS_RANDOM.value(1,10));
        parfum_rand:=round(DBMS_RANDOM.value(1,10));
        for i in useri loop
            if ok_user=user_rand then 
               ok_user:=ok_user+1;
               numeUser:=i.id;
            else
               ok_user:=ok_user+1;
            end if;
        end loop;
        for i in parfum loop
            if ok_parfum=parfum_rand then 
               ok_parfum:=ok_parfum+1;
              numeParfum:=i.nume;
              numeColectie:=i.colectie;
              numeFirma:=i.firma;
              v_pret:=i.pret;
              v_id:=i.id;
           else
              ok_parfum:=ok_parfum+1;
          end if;
        end loop;
        begin
            insert into comanda values(numeUser,V_DATA,v_id,numeParfum,numeColectie,numeFirma,1,v_pret,'New'); 
        end;
  end loop;
end populeazaComanda;
/

declare
  begin
    populeazaComanda(5);
  end;
/


drop index cod_unic;
/
CREATE UNIQUE INDEX cod_unic
on voucher(cod);
/
explain plan for select * from voucher 
where id='adriana';
/
select plan_table_output from table(DBMS_XPLAN.DISPLAY());
/

select * from users;
/
create or replace procedure populeazaVouchere(nrVouchere in number) is

  cursor useri is
      select id 
      from users ;

  cursor parfum is 
      select nume 
      from perfum;

  numeUser varchar2(30);
  numeParfum varchar2(1000);
  user_rand number;
  ok_user number;
  parfum_rand number;
  ok_parfum number;
  voucher_rand number;
  cod number;
  begin 

      for i in 1..nrVouchere loop
      <<continuaFor>>
      null;
        ok_user:=1;
        ok_parfum:=1;
        user_rand:=round(DBMS_RANDOM.value(1,10));
        parfum_rand:=round(DBMS_RANDOM.value(1,10));
        voucher_rand:=round(DBMS_RANDOM.value(1,3));
        cod:= round(DBMS_RANDOM.value(100000,999999));
        for i in useri loop
            if ok_user=user_rand then 
               ok_user:=ok_user+1;
               numeUser:=i.id;
            else
               ok_user:=ok_user+1;
            end if;
        end loop;
        for i in parfum loop
            if ok_parfum=parfum_rand then 
               ok_parfum:=ok_parfum+1;
              numeParfum:=i.nume;
           else
              ok_parfum:=ok_parfum+1;
          end if;
        end loop;
        begin
          if voucher_rand=1 then
            insert into voucher values(numeUser,cod,10,numeParfum);
          elsif voucher_rand=2 then
            insert into voucher values(numeUser,cod,20,numeParfum);
          elsif voucher_rand=3 then
            insert into voucher values(numeUser,cod,30,numeParfum); 
          end if;
          exception when DUP_VAL_ON_INDEX then
          goto continuaFor;
        end;
  end loop;
end populeazaVouchere;
/

declare
begin
    populeazaVouchere(500000);
end;
/

select * from voucher;
/

create  index comenzi 
on comanda(id);