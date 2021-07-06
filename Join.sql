<<<<<<< HEAD

-- inner join
-- 모든 사용자에 대한 원하는 조건 불러오기.
SELECT usertbl.userID, usertbl.name, buytbl.prodName, buytbl.price
FROM usertbl INNER JOIN buytbl
ON usertbl.userID=buytbl.userID;

-- 서울 사용자에 대한 원하는 조건  불러오기.

SELECT usertbl.userID, usertbl.name, buytbl.prodName, buytbl.price, usertbl.addr
FROM usertbl INNER JOIN buytbl
ON usertbl.userID=buytbl.userID
WHERE usertbl.addr = '서울'
AND prodname = '운동화';

-- 윤종신이라는 사용자가 구맿나 제품명
-- ANSI 표준
SELECT usertbl.userID, usertbl.name, buytbl.prodName
FROM usertbl INNER JOIN buytbl
ON usertbl.userID=buytbl.userID
WHERE usertbl.name = '성시경';

-- ANSI 표준 (OUTER 조인)
SELECT usertbl.userID, usertbl.name, buytbl.prodName
FROM usertbl left OUTER JOIN buytbl
ON usertbl.userID=buytbl.userID;

SELECT usertbl.userID, usertbl.name, buytbl.prodName
FROM usertbl right OUTER JOIN buytbl
ON usertbl.userID=buytbl.userID;

-- inner join 3개 이상의 테이블 조인
SELECT ...
from a join b
on a.id = b.id
join c
on c.id = a.id


-- 1) 사용자 이름, 구매제품명, 가격, 수량

SELECT usertbl.name, buytbl.prodName, buytbl.price, buytbl.amount
FROM usertbl INNER JOIN buytbl
ON usertbl.userID=buytbl.userID;

-- 2) 사용자 중 총구매액이 가장 많은 사용자 이름.
SELECT sum(buytbl.price* buytbl.amount) 총액
				,usertbl.userID
FROM usertbl INNER JOIN buytbl
ON usertbl.userID=buytbl.userID
GROUP by usertbl.userID 
order by 총액 desc
limit 1;


-- 별칭 주기.
SELECT sum(b.price* b.amount) 총액
				,u.userID
FROM usertbl u INNER JOIN buytbl b
ON u.userID=b.userID
GROUP by u.userID 
order by 총액 desc
limit 1;

=======

-- inner join
-- 모든 사용자에 대한 원하는 조건 불러오기.
SELECT usertbl.userID, usertbl.name, buytbl.prodName, buytbl.price
FROM usertbl INNER JOIN buytbl
ON usertbl.userID=buytbl.userID;

-- 서울 사용자에 대한 원하는 조건  불러오기.

SELECT usertbl.userID, usertbl.name, buytbl.prodName, buytbl.price, usertbl.addr
FROM usertbl INNER JOIN buytbl
ON usertbl.userID=buytbl.userID
WHERE usertbl.addr = '서울'
AND prodname = '운동화';

-- 윤종신이라는 사용자가 구맿나 제품명
-- ANSI 표준
SELECT usertbl.userID, usertbl.name, buytbl.prodName
FROM usertbl INNER JOIN buytbl
ON usertbl.userID=buytbl.userID
WHERE usertbl.name = '성시경';

-- ANSI 표준 (OUTER 조인)
SELECT usertbl.userID, usertbl.name, buytbl.prodName
FROM usertbl left OUTER JOIN buytbl
ON usertbl.userID=buytbl.userID;

SELECT usertbl.userID, usertbl.name, buytbl.prodName
FROM usertbl right OUTER JOIN buytbl
ON usertbl.userID=buytbl.userID;

-- inner join 3개 이상의 테이블 조인
SELECT ...
from a join b
on a.id = b.id
join c
on c.id = a.id


-- 1) 사용자 이름, 구매제품명, 가격, 수량

SELECT usertbl.name, buytbl.prodName, buytbl.price, buytbl.amount
FROM usertbl INNER JOIN buytbl
ON usertbl.userID=buytbl.userID;

-- 2) 사용자 중 총구매액이 가장 많은 사용자 이름.
SELECT sum(buytbl.price* buytbl.amount) 총액
				,usertbl.userID
FROM usertbl INNER JOIN buytbl
ON usertbl.userID=buytbl.userID
GROUP by usertbl.userID 
order by 총액 desc
limit 1;


-- 별칭 주기.
SELECT sum(b.price* b.amount) 총액
				,u.userID
FROM usertbl u INNER JOIN buytbl b
ON u.userID=b.userID
GROUP by u.userID 
order by 총액 desc
limit 1;

>>>>>>> d16ef87cb45420b39f9c7b5c0c9e386d4a889e7e
