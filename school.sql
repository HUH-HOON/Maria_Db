use test;

create table 교수(
	교수번호 char(10) primary key
,	교수이름 varchar(50) not null
,	학과 varchar(20) not null
,	전공 varchar(20) not null
);

create table 학생(
  	학번 char(10) primary key
,	이름 varchar(50) not null 
,             주소 varchar(200)  
,             학년 char(1)   
, 	지도교수번호 char(10) references 교수(교수번호)  
);

create table 과목(
	과목번호 varchar(4) primary key
,	과목이름 varchar(50)
,	학점 char(1) 
,	강의교수번호 char(10) references 교수(교수번호)
,	강의실 varchar(3)  
,	강의시간 varchar(5)
);

create table 등록(
	학번 char(10) references 학생(학번)
,	과목번호 varchar(4) references 과목(과목번호)
,	성적 varchar(2) 
,             primary key(학번,과목번호)
);

