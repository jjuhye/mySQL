-- 주석
# 주석
CREATE DATABASE testdb;

USE testdb;

-- 자료형
-- 자바 / mysql
-- int > int
-- String > varchar
-- (util)date > (sql)date
-- mySQL은 >> 이름 타입(길이)(+속성)
-- int num; num int(2) not null

create table sample(
	num int(11),
    name varchar(20),
    birthday date,
    address varchar(40)
);

select * from sample;
delete from sample;

insert into sample values(3,'테스트1','1991-01-01' , '서울특별시 강남');
insert into sample values(4,'테스트2','1992-01-01' , '서울특별시 역삼');
insert into sample values(5,'테스트3','1993-01-01' , '서울특별시 신사');
insert into sample values(6,'테스트4','1994-01-01' , '경기도 아무개');
insert into sample values(7,'테스트5','1995-01-01' , '강원도 아무개');
insert into sample values(8,'테스트6','1996-01-01' , '경기도 수원');
insert into sample values(9,'테스트7','1997-01-01' , '경기도 용인');

delete from sample where name='테스트3';
select * from sample where address like '서울특별시%';
select * from sample where address like '%무개';
select * from sample where name like '%5%';

desc sample;
select * from sample where address like '%아무개' or num=3;
select * from sample where not(birthday > '1992-01-01' and address like '강원도%');

-- 정렬 order by : by 뒤에
# 키워드 순서중요. where 뒤에 order by 위치
# 1) select 2) from테이블명 3) where 조건절 4) order by 정렬조건
# ASC : 오름차순 정렬(기본), DESC: 내림차순 정렬
# 숫자>영어>한글>기호 순서

#숫자함수 round, floor, truncate, pow, mod, greatest, least..
select truncate(157.45678,-2);
select pow(2,3);
select mod(10,4);
select greatest(4,3,7,8,13) as '최대값';
select least(4,3,7,8,13) as '최소값';

#sql은 인덱스1부터 시작
#문자열 concat이어붙이기 insert, replace, instr
select concat('010','-','1234','-','5678');
select insert('abcde',2,3,'bbb'); -- 2번째부터 3개 삭제후 삽입
select instr('안녕하세요','세'); -- indexString, 없으면 0반환

#문자열 left, right, mid
select left('abcdefg',3);
select mid('abcdefg',3,4);

#문자열 ltrim, rtrim, trim
select concat('[','        abc          ',']');
select concat('[',rtrim('        abc          '),']');
select concat('[',trim('        abc          '),']');

#대소문자 변환
select lcase('aDwfTGd'); -- 소문자로
select lower('aDwfTGd'); -- 소문자로
select ucase('aDwfTGd'); -- 대문자로
select upper('aDwfTGd'); -- 대문자로

#반전 reverse
select reverse('aDwfTGd'); -- 거꾸로출력alter

#날짜관련
#시스템 날짜 받아오는 방법
select now(), sysdate(), current_timestamp();
select year(now()), month(now()), day(now());
select concat(year(now()),'년', month(now()),'월', day(now()),'일');
#날짜포맷
select now(), date_format(now(),'%Y년 %m월 %d일, %H시 %i분 %s초'); -- Y2023년 y23년 H15시 h03시
select now(), dayofweek(now()); -- 일~토 1~7
select now(), week(now()); -- 몇번째 주

#두 날짜의 차이값 가져오기
select datediff(now(),'1978-01-24');

# 다른테이블의 연결된 자료 가져오기
-- inner join : 두테이블 교집합 > 같은 컬럼값 앞에 무조건 테이블 이름 붙어주기
#select buyer, m. member_name, buy_price from cart c, member m where c.buyer=m.member_id;

#그룹함수 count, sum, avg, max, min (여러 테이블 레코드(row)를 1개로 병합하여 결과도출)

#group by - 그룹함수가 무조건 1개로 통합되는 한계를 극복하기 위해 만들어준 명령어
#select book_kind, count(*) from book group by book_kind;

#having - group by로 만든 테이블의 조건절이다. where차이점
#group by로 만든 임시컬럼은 기존커럼에 존재하지 않으므로 having 조건
#select buyer, sum(buy_count) from cart group by buyer having sum(buy_count)>=2;