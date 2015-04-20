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
                      familia varchar2(500),
                      firma varchar2(20),
                      gramaj number,
                      anotimp varchar2(15),
                      ocazie varchar2(20),
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
                      pentru_produsul varchar2(500) null )
/


create table comanda ( id varchar2(30)  references users(id) ,
                      produs varchar2(20) ,
                      cantitate number(3),
                      pret number(6),
                      stare varchar2(20)) 
/

create table stocuri (id number(6) ,
                      unitati_vandute number(6) ,
                      unitati number(6),
                      unitati_disponibile number(6),
                      foreign key(id ,unitati )  references perfum(id,cantitate) )
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
drop index cod_unic;
CREATE UNIQUE INDEX cod_unic
on voucher(cod);

explain plan for select * from voucher 
where id='adriana';

select plan_table_output from table(DBMS_XPLAN.DISPLAY());


select * from users;
/
create or replace procedure populeazaVouchere(nrVouchere in number)
is
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
cod number;
begin 

for i in 1..nrVouchere loop
<<continuaFor>>
null;
  ok_user:=1;
  ok_parfum:=1;
  user_rand:=round(DBMS_RANDOM.value(1,10));
  parfum_rand:=round(DBMS_RANDOM.value(1,10));
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
  insert into voucher values(numeUser,cod,10,numeParfum);
  exception when DUP_VAL_ON_INDEX then
  goto continuaFor;
  end;  
end loop;
end populeazaVouchere;
/
declare
begin
populeazaVouchere(5000);
end;
/
select * from voucher;

insert into voucher values('andrei',666666,10,'numeParfum');
create  index comenzi 
on comanda(id);