--ex1.employee테이블 구조 복사 ->emp_sample,
-- 사원 테이블의 사원번호 칼럼에 테이블 레벨로 primary key 제약조건 지정
-- my_emp_pk
-- alter table 테이블명 add constraint 제약조건명 primary key(칼럼);
create table emp_salmpe
as
select * from employee
;
--테이블명 변경 rename 이전테이블명 to 새로운테이블명
rename emp_salmpe to emp_sample;
select * from emp_sample;
--제약조건 조회
select * from user_constraints where table_name='EMP_SAMPLE';
--alter table 테이블명 add constraint 제약조건명 primary key(칼럼);
alter table emp_sample add constraint my_emp_pk primary key(eno);


--ex2. dept_sample생성 하여 my_dept_pk로 지정
create table dept_sample
as 
select * from dept;
select * from dept_sample;
alter table dept_sample add constraint my_dept_sample_pk primary key(dno);
select * from user_constraints where table_name='DEPT_SAMPLE';

--ex3. 
select * from emp_sample;
select * from user_constraints where table_name='EMP_SAMPLE';
alter table emp_sample add constraint my_emp_dept_fk
foreign key(dno) references dept(dno);

--ex4. 사원테이블의 커미션 칼럼 0보다 큰 값만 입력
select * from emp_sample;
--ORA-02293: cannot validate (HR.EMP_COMMISSION_MIN) 
--        - check constraint violated
update emp_sample set commission=nvl(commission,0); 

alter table emp_sample add constraint 
 emp_commission_min check(commission>=0);
 
--
select * from emp_insert;
select * from user_constraints where table_name ='EMP_INSERT';
insert into emp_insert values('7788','김길동',1500,20,sysdate);
-- primary key: unique + not null
--ORA-02437: cannot validate (HR.EMP_INSERT_PK) - primary key violated
update emp_insert 
   set emp_id = (select max(emp_id)+1 from emp_insert)
 where emp_id =7788
   and rownum =1;--가상 칼럼 (pseudo) 
   
select rownum, emp_id from emp_insert where emp_id=7788;
-- 중복값 제거 후 primary key 제약조건 추가
alter table emp_insert add constraint emp_insert_pk 
 primary key(emp_id);
 
--primary key 칼럼 두개 이상 설정
create table emp_pr(
eno number not null,
ename varchar2(10),
sal number,
dno number
);
--두개 이상의 칼럼으로 primary key 생성 -복합키
alter table emp_pr add constraint my_emp_pr_pk 
 primary key(eno,ename);
--칼럼이 두개 이상 복합으로 키가 생성되면
--두칼럼 의 값으로 비교해서 키 중복 여부확인
insert into emp_pr values(7788,'홍길동',1500,10); 
insert into emp_pr values(7788,'일지매',1500,10);
select * from emp_pr; 
-- ORA-00001: unique constraint (HR.MY_EMP_PR_PK) violated 
insert into emp_pr values(7788,'홍길동',1500,10); 









 
 
 

 



