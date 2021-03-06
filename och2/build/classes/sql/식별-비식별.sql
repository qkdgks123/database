select * from customer7;

select * from user_tables where table_name like 'CUSTOM%';

select * from product2;

select * from orders;
--주문테이블에 값 입력
--ORA-02291: integrity constraint (HR.FK_PRODUCT2_TO_ORDERS) violated - parent key not found
insert into orders values(1,10,1,sysdate,'hong','P1212');
--부모테이블의 기본키값 등록(도메인)
insert into customer7 values('hong','홍길동','1234','서울시','010-111-1234',sysdate);
insert into customer7 values('kim','홍길동','1234','서울시','010-111-1234',sysdate);
--부모테이블의 기본키값 등록(도메인)
insert into product2 values('P1212','새우깡',2000,2300,10,sysdate);

--비 식별관계 -부모테이블의 기본키가 자식테이블의 일반속성으로 참조되는 관계(키가 아님)
insert into orders values(2,10,1,sysdate,'hong','P1212');

select * from orders2;
select * from customer8;
select * from product3;

-- 식별관계
--부모테이블의 기본키값 등록(도메인)
insert into customer8 values('hong','홍길동','1234','서울시','010-111-1234',sysdate);
insert into customer8 values('kim','홍길동','1234','서울시','010-111-1234',sysdate);
--부모테이블의 기본키값 등록(도메인)
insert into product3 values('P1212','새우깡',2000,2300,10,sysdate);
insert into product3 values('P1213','감자깡',2000,2300,10,sysdate);
--- orders테이블에 'hong','P1212'가 키
insert into orders2 values('hong','P1212',5,1,sysdate);
select * from orders2;
--식별관계 -부모테이블의 기본키가 자식테이블의 속성으로 참조되는경우
--      - 참조되는 속성이 자식테이블의 기본키로 사용되는 경우 식별관계임.
-- ORA-00001: unique constraint (HR.PK_ORDERS2) violated
insert into orders2 values('hong','P1212',5,1,sysdate);
insert into orders2 values('hong','P1213',5,1,sysdate);
insert into orders2 values('kim','P1212',5,1,sysdate);


select * from student;
select * from books;
select * from RENTHISTORY;
--데이타입력
insert into student values('21001','김철수','영문학');
insert into student values('21002','양길헌','컴퓨터');
insert into student values('21003','임영수','화학');
insert into student values('21004','박한나','수학');

--도서정보
insert into books values ('B001','자바프로그래밍','정용주','글벗');
insert into books values ('B002','컴퓨터 교육론','이원규','C미디어');
insert into books values ('B003','운영체제론','강길만','홍익');
insert into books values ('B004','인터넷 윤리','오예인','좋은씨앗');

--대출기록부
insert into renthistory values(sysdate,'21001','B001',sysdate+7);
insert into renthistory values(sysdate-1,'21001','B004',sysdate+8);
insert into renthistory values(sysdate,'21004','B001',sysdate+8);
insert into renthistory values(sysdate,'21004','B003',sysdate+8);
select * from RENTHISTORY;

select * from dept9;
select * from customer9;
select * from saleh;
select * from saled;
select * from emp9;
select * from product9;


