use sqldb;
select * from usertbl where height > 177;

select * from usertbl where height > (select height from usertbl where name = '김경호');

-- 김씨의 회원의 키와 같은 사람.
select * from usertbl where height > (select height from usertbl where name like '김%');

select * from usertbl where height > ANY -- 하나라도 참이면 참
(select height from usertbl where name like '김%');


select * from usertbl where height > ALL - 모두 참인 겯우만 참
(select height from usertbl where name like '김%');

--김씨의 회원읠 키가가 같은 사람 - --는 in과 동일
select * from usertbl where height =  ANY
(select height from usertbl where name like '김%');


select * from usertbl where height  IN
(select height from usertbl where name like '김%');


-- buytbl 테이블에서 가격이 가장 비싼 제품명을 구하시오.
SELECT prodName from buytbl order by price desc limit 1;

-- bbk 사용자의 주문 정보를 모두 bbk-buytbl 테이블로 옮기시오.
CREATE TABLE bbk_buytbl
as
SELECT  * 
from buytbl
where userID = 'BBK'; 

select * from bbk_buytbl;

SELECT avg(amount), amount from buytbl;

SELECT avg(amount), sum(amount), userid from buytbl GROUP BY userid;

-- 사용자 별로 amount 평균과 합을 구하되
-- user id bbk인 경우는 제외. 
-- 단, amount 합이 5 이상인 경우만 출력. 

SELECT avg(amount), sum(amount), userid from buytbl 
WHERE userid != 'bbk' -- 그룹핑 전에 처리되는 조건
GROUP BY userid
HAVING sum(amount) >= 5; -- 그룹핑 후에 처리되는 조건

-- 총 구매금액이 1000이상인 사용자에게만 사은품 증정
SELECT sum(price * amount), userid
FROM buytbl
GROUP BY userid
HAVING sum(price * amount) >=1000;


-- 총 합계 까지 구할 수있음.
select sum(amount) , groupname
from buytbl
group by groupname
with rollup;

-- insert 문 예제

-- 1) insert 모든 칼럼에 데이터를 저장하는 경우
-- insert into 테이블 명 VALUES(값 1, 값 2)

insert into buytbl VALUES (13, 'kbs','책','서적',5000, 2);


-- 2) 일부 칼럼에 데이터를 저장하는 경우
-- insert into 테이블 명  (칼럼명1, 칼럼명 2 ) VALUES(값 1, 값 2)

insert into buytbl (num, userid, prodname, price, amount)
values ( 14, 'BBK', '노트북',6000,1);

-- update 
update buytbl 
set price = 10000 
where prodname = '노트북';

rollback;


select @@AUTOCOMMIT; -- 1은 자동 커밋
set @@AUTOCOMMIT = 0; -- 0 은 해제

-- delete 절
DELETE from buytbl
where userid = 'bbk';

rollback;

select * from buytbl ;

-- 자동 커밋 설정이 안되어있는 경우 롤백 가능!
-- insert, update, delete 는 rollback이 가능하다.

-- 테이블 전ㄴ체 데이터 삭제 방법
delete from 테이블명 ; -- rollback이 가능함.(단, 시간이 오래걸린다.)
TRUNCATE table 테이블명 ; -- rollback 불가능.
drop table 테이블명 ; -- 테이터 + 테이블까지 삭제.