select eno, ename from employee;
--select���� Į��(����)�� ��Ģ����
select eno, ename, salary+300, salary-300, salary*300, salary/4 
  from employee;
  
-- null(��)�� ó��, nvl(��,��ü��)
-- Į�� as ��Ī
select eno, ename, salary, commission from employee;
select eno,ename, salary,commission,commission+300 as com1,
       nvl(commission,0)+300 as com2 
  from employee;

--select�� �ߺ�Į�� ���� distinct
select distinct dno from employee;  
select * from employee;

select 'hello world!' from employee where rownum =1;
select 'hello world!' from dual;
select * from dual;

-- �޼��� ���,������ ��¿� ���̺� dual;
-- Į�� as ��Ī, Į�� [as] ��Ī(as ��������)
select 1+2 as intsum, 5.5+4.5 as dblsum, 'hello' str, 
       sysdate as "�� ¥", 10/5 div, 20*3 mul 
  from dual;

-- 
 select null+10, null*10, nvl(null,0)+10, nvl(null,1)*10 from dual;
 

  
  