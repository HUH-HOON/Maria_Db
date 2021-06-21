create table tetest(
	a1 char(5),
	a2 VARCHAR(5)
	);
	
select * from tetest;
	
	
insert into tetest values ('a','a');
select a1+'*' from test;

-- date - 날짜 나옴.
-- datetime - 시간까지 나옴.

-- case 문
use sqldb;

-- 사용자 정보 출력 '서울' 1, '경북' 2, 나머지는 3 출력.
select name, addr, case addr
							when '서울' then 1
							when '경북' then 2
							else 3
							end as "지역코드" -- 이 칼럼의 별칭
from usertbl; 


-- bytbl 테이블에서 사용자id, groupname, 가격출력
-- groupname 서적의 가격을 10프로 할인하여 출력.

SELECT userid, prodname ,groupname, price, case groupname
														when '서적' then price *0.9
														else price 
														end
														as "할인 가격"
from buytbl;


-- 1) 함수의 종류
-- 문자 함수
-- 숫자 함수
-- 날짜 함수

-- 2) 함수의 종류
-- 다중행 함수(집계형 함수)
-- 단일행 함수

-- 단일행 함수 / 문자 함수
SELECT LOWER(userid) from buytbl;
SELECT UPPER(userid) from buytbl;

select lpad(userid,10,'*') from buytbl;

select trim(' 이것이 ')from buytbl;
select trim(both 'ㅋ' from 'ㅋㅋㅋㅋㅋ재밌어요 ㅋㅋ');

select substr('대한민국 만세', 3, 2);
-- db는 인덱스가 1부터 시작함.

-- 숫자 함수
select round(10.3);
select round(10.6);

select TRUNCATE(10.3,0);
select FLOOR(10.3);

select TRUNCATE(-10.3,0);
select FLOOR(-10.3); -- 내림. 현재 숫자보다 작은수로 가장 가까운 정수.

-- 날짜 함수
SELECT now(), sysdate(); -- 현재 날짜와 시간

SELECT adddate(sysdate(), 100) ;
SELECT subdate(now(), 100) ;

-- employess db에서
-- employess 테이블에서 모든 사원의
-- 입사 후 1주일 뒤 날짜는?
use employees

SELECT adddate(hire_date, 7) as ot날짜
from employees;

-- 오늘까지 근무일수
SELECT datediff(sysdate(),hire_date) as 근무일수, first_name, last_name
from employees;

-- 가장 많이 입사한 월
SELECT count(MONTH(hire_date)) 입사사원수
		,month(hire_date) 입사월
from employees
group by month(hire_date)
order by 입사사원수  desc
limit 1;

-- 가장 많이 입사한 년도
SELECT count(year(hire_date)) 입사사원수
		,year(hire_date) 입사년도
from employees
group by year(hire_date)
order by 입사사원수  desc
limit 1;

-- last_day 해당 월의 마지막 날.
SELECT LAST_DAY(sysdate());

-- 시스템 정보 함수
select CURRENT_USER(); -- 현재 사용자
select database(); -- 현재 db
