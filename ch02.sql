-- ���� �񱳿���  where Į�� = �� 
select * from employee
 where dno=10; --Į��dno�� ���� ����
 
-- ���ڿ� ��  where Į�� = '���ڰ�' 
select * from employee
where ename='SCOTT';-- Į�� ename�� ���� ���� (Ȭ����ǥ)'��'

--��¥ �� where Į�� <= '��¥'
select * from employee
 where hiredate <='1981/01/01';

--��ȸ ����
-- ����(=)
select eno, ename,salary from employee where salary=1500; 
-- ����ũ��(>)
select eno, ename, salary from employee where salary>1500;
-- �����۴�(<)
select eno, ename, salary from employee where salary<1500;
--���� ũ�ų� ����(>=)
select eno, ename, salary from employee where salary>=1500;
--���� �۰ų� ����(<=)
select eno, ename, salary from employee where salary<=1500;
--�����ʴ�(!=,<>,^=)
select eno, ename, salary from employee where salary!=1500;
select eno, ename, salary from employee where salary<>1500;
select eno, ename, salary from employee where salary ^=1500;

--�񱳿�����-Į�� ����ȵ�.
--select 10>5, 10<5 from dual;

--������ AND, OR, NOT
--and
select * from employee where dno=10 and job='MANAGER';
-- or
select * from employee where dno=10 or job='MANAGER';
-- not
select * from employee where not dno=10;


--���� ������ between A and B,     1000<=salary<=1500
select * from employee where salary between 1000 and 1500;
select * from employee where salary>=1000 and salary<=1500;
--  salary <1000 and 1500<salary
select * from employee where salary<1000 or salary>1500;
select * from employee where salary not between 1000 and 1500;
--��¥ ���� 
select * from employee where hiredate between '1981/02/03' and '1981/11/17';

--in ������- ������ ���� �ϳ��� �ش��ϴ� �� ����
select * from employee where commission in (300,500,1400);

-- like % | _
select * from employee where ename like '%D%';--���� ������� D����
select * from employee where ename like '%E_';-- _���� 1�� ���ڸ� �����ϴ� E
select * from employee;
select * from employee where ename like '_A%';-- �ι�° �ܾ A�� ���Ե� ���ڿ�

-- is null | is not null - �ش�Į���� ���� null���� ����Ȯ��
select * from employee where commission is null;
select * from employee where commission is not null;












