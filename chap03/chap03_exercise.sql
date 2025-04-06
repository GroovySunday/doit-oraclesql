sqlplus sys/oracle as sysdba


-- 실습 3-1
ALTER SESSION SET "_oracle_script"=true;

-- 실습 3-2
create user scott
identified by tiger
default tablespace users quota unlimited on users;

grant create session, create table to scott;

-- 실습 3-3
conn scott/tiger

show user

-- 실습 3-4
ALTER SESSION SET "_oracle_script"=true;

ALTER SESSION SET nls_date_language='american';

ALTER SESSION SET nls_date_format='dd-MON-rr';


-- 실습 3-5
@C:\doitoracle\doitoracle_scott.sql


-- 실습 3-6
desc emp;
desc dept;
desc salgrade;

-- 실습 3-7
select * from emp;


