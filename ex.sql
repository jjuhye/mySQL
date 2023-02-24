create database ex1;
use ex1;

create table member(
member_no int,
member_id varchar(20),
member_pw varchar(20),
member_name varchar(20),
member_gender varchar(1),
member_point int,
member_reg_date datetime
);
delete from book;

create table book(
book_no int,
book_kind varchar(3),
book_title varchar(100),
book_price int,
book_count int,
book_author varchar(40),
book_publishing_com varchar(30),
book_publishing_date datetime,
book_image varchar(16),
book_content varchar(500),
book_discount_rate int,
book_reg_date datetime
);

create table cart(
cart_no int,
buyer varchar(50),
buy_price int,
buy_count int,
book_no int,
book_title varchar(100),
book_image varchar(16)
);

DESC member;

INSERT INTO member VALUES (1, 'qwer', '1234', '홍길동', 'm',  0, '2021-01-01 12:11:30');
INSERT INTO member VALUES (2, 'java', '1234', '김유신', 'm',  0, '2021-01-02 03:20:54');
INSERT INTO member VALUES (3, 'haha', '1234', '신혜정', 'w', 0, NOW()); -- NOW(): 현재 시스템 데이터값을 가져온다
INSERT INTO member VALUES (4, 'tiger', '1234', '선우호랭', 'w', 0, '2020-12-25 05:43:11');
INSERT INTO member VALUES (5, 'green', '1234', '정그린', 'm', 0, '2018-06-12 07:21:08');

SELECT * FROM member;

DESC book;

INSERT INTO book VALUES(1001, '100', '나미야 잡화점의 기적', 15000, 10, '히가시노 게이고', '현대문학', '2019-01-11', 'nothing.jpg', '일본을 대표하는 소설가 히가시노 게이고의 신작', 10, '2019-01-15');
INSERT INTO book VALUES(1002, '100', '연필로 쓰기', 18000, 80, '김훈', '문학동네', '2018-02-14', 'nothing.jpg', '70대의 김훈이 연필로 꾹꾹 눌러쓴 산문의 진경', 5, '2018-02-25');
INSERT INTO book VALUES(1003, '100', '인간 실격', 20000, 50, '다자이 오사무', '민음사', '2016-11-20', 'nothing.jpg', '2019 상반기 종합 베스트셀러', 0, '2016-11-23');
INSERT INTO book VALUES(1004, '100', '기묘한 신혼여행', 12000, 30, '정태원', '문학의 문학', '2017-04-20', 'nothing.jpg', '13편의 추리문학 걸작선', 20, '2017-04-21');
INSERT INTO book VALUES(1005, '100', '우리가 인생이라 부르는 것들', 16000, 10, '정재찬', '인플루엔셀', '2020-02-25', 'nothing.jpg', '자기 삶의 언어를 찾는 열네 번의 시 강의', 0, '2020-02-27');
INSERT INTO book VALUES(1006, '100', '어제의 세계', 18000, 80, '슈테판 츠바이크', '지식공작소', '2014-02-05', 'nothing.jpg', 'Die Welt von Gestern', 20, '2014-02-08');

INSERT INTO book VALUES(2001, '200', '외국어 공부의 감각', 15000, 10, '아키야마 요헤이', '월북', '2011-03-11', 'nothing.jpg', '나는 어떻게 10개 국어를 말하게 되었나?', 25, '2011-03-13');
INSERT INTO book VALUES(2002, '200', 'EBS 수능완성 고등 제2외국어', 28000, 20, 'EBS 편집부', 'EBS교육방송', '2014-08-14', 'nothing.jpg', '2014 학년도 수능 연계교재', 10, '2014-08-17');
INSERT INTO book VALUES(2003, '200', '외국어 전파담', 23000, 70, '로버트 파우저', '혜화', '2012-10-03', 'nothing.jpg', '외국어는 어디에서 어디로', 10, '2012-10-05');
INSERT INTO book VALUES(2004, '200', '아무튼,외국어', 22000, 50, '조지영', '위고', '2019-04-20', 'nothing.jpg', '모든 나라에는 철수와 영희가 있다', 10, '2019-04-28');
INSERT INTO book VALUES(2005, '200', '구슬쌤의 예의 바른 영어 표현', 15000, 10, '구슬', '사람in', '2021-01-04', 'nothing.jpg', '유튜브 24만 구독자 구슬쌤이 알려 주는 영어표현', 10, '2021-01-05');
INSERT INTO book VALUES(2006, '200', '시원스쿨 네이티브 5분 영어회화', 13500, 10, '박윤진', '시원스쿨닷컴', '2020-12-21', 'nothing.jpg', '하루 한 문장씩, 오늘 배워 내일 쓰는', 0, '2020-12-24');

INSERT INTO book VALUES(3001, '300', '컴퓨터 비전과 딥러닝', 35000, 70, '라쟈링가파 샨무갸마니', '에이콘', '2018-02-18', 'nothing.jpg', '텐서플로와 케라스를 사용한 전문 가이드', 5, '2018-02-22');
INSERT INTO book VALUES(3002, '300', '쉽게 배우는 데이터 통신', 19000, 10, '박기현', '한빛아카데미', '2015-03-10', 'nothing.jpg', '데이터 통신과 컴퓨터 네트워크', 10, '2015-03-11');
INSERT INTO book VALUES(3003, '300', '컴퓨터활용능력', 38000, 20, '이주희', '배움', '2012-09-24', 'nothing.jpg', '컴퓨터 자격증', 20, '2012-09-26');
INSERT INTO book VALUES(3004, '300', '초등학생이 알아야할 숫자', 22000, 0, '엘리스 제임스', '어스본코리아', '2013-06-12', 'nothing.jpg', '컴퓨터와 코디 100가지', 10, '2013-06-18');
INSERT INTO book VALUES(3005, '300', 'Java의 정석', 30000, 0, '남궁성', '도우출판', '2016-01-27', 'nothing.jpg', '자바의 기초부터 객체지향개념을 넘어 실정활용까지', 30, '2016-01-29');
INSERT INTO book VALUES(3006, '300', '은노기의 JSP 2.3 웹 프로그래밍', 38000, 0, '김은옥', '삼양미디어', '2014-11-20', 'nothing.jpg', '기초부터 모델2 기반의 MVC패턴까지', 10, '2014-11-22');
INSERT INTO book VALUES(3007, '300', '혼자 공부하는 자바', 24000, 1, '신용권', '한빛미디어', '2019-06-10', 'nothing.jpg', 'Java8 & 11 지원/무료 동영상 강의 제공', 10, '2019-06-19');
INSERT INTO book VALUES(3008, '300', '혼자 공부하는 자바스크립트', 24000, 0, '윤인성', '한빛미디어', '2021-01-04', 'nothing.jpg', '자바스크립트를 탄탄하게 시작하고 싶을 때', 10, '2021-01-09');
INSERT INTO book VALUES(3009, '300', '모던 자바 인 액션', 34000, 5, '라울', '한빛미디어', '2019-08-01', 'nothing.jpg', '전문가를 위한 자바 8,9,10 기법 가이드', 10, '2019-08-02');
 
SELECT * FROM book;

DESC cart;

INSERT INTO cart VALUES(1, 'qwer', 27000, 1, 3005, 'Java의 정석', 'nothing.jpg');
INSERT INTO cart VALUES(2, 'tiger', 27000, 1, 3005, 'Java의 정석', 'nothing.jpg');
INSERT INTO cart VALUES(3, 'haha', 19800, 1, 2004, '아무튼,외국어', 'nothing.jpg');
INSERT INTO cart VALUES(4, 'tiger', 20000, 1, 1003, '인간 실격', 'nothing.jpg');
INSERT INTO cart VALUES(5, 'haha', 34200, 1, 3006, '은노기의 JSP 2.3 웹 프로그래밍', 'nothing.jpg');
INSERT INTO cart VALUES(6, 'tiger', 13500, 1, 1001, '나미야 잡화점의 기적', 'nothing.jpg');

SELECT * FROM cart;

select book_no, book_title from book;
select book_no as '책번호', book_title as '책제목' from book;

select 10+20 as result;
select book_title as '책제목', book_price as '책가격', book_price+10000 as '더하기' from book;

# [문제 1] 회원의 번호, 이름 가져오기
select member_no as '번호', member_name as '이름' from member;
# [문제 2] 책의 번호, 이름, 가격 가져오기
select book_no as '번호', book_title as '책제목', book_price as '가격' from book;
# [문제 3] 장바구니의 번호, 구입한 회원의 id, 구입한 책제목 가져오기
select cart_no as '번호', buyer as '구매자', book_title as '책제목' from cart;
# [문제 4] 각 도서의 가격을 10% 인상한 금액 출력
select book_title as '책제목',book_price as '책가격',floor(book_price*1.1) as '10%인상가' from book;
# [문제 5] 각 도서의 가격을 10% 인하한 금액 출력
select book_title as '책제목',book_price as '책가격',round(book_price*0.9, 3) as '10%인상가' from book;

# where절 연습 
# [문제 1] member테이블에서 id가 qwer인 회원의 이름과 비밀번호 가져오기
select member_name, member_pw from member where member_id='qwer';
# [문제 2] book테이블에서 book_kind가 문학(100)인 책정보 가져오기
select * from book where book_kind='100';
# [문제 3] book테이블에서 가격이 15,000원 이하인 책정보 가져오기
select * from book where book_price<=15000;
# [문제 4] book테이블에서 문학(100)이 아닌 책정보만 가져오기
select * from book where not(book_kind='100');
# [문제 5] book테이블에서 2020년 이전에 등록된 책정보만 가져오기
select * from book where book_reg_date<'2020-01-01';
# [문제 6] book테이블에서 컴퓨터(300)이면서 가격이 15,000원 이상인 책정보 가져오기
select * from book where book_kind='300' and book_price>=15000;
# [문제 7] book테이블에서 재고가 없는 책정보 가져오기
select * from book where book_count=0;
# [문제 8] book테이블에서 문학(100)이거나 컴퓨터(300)인 책정보 가져오기
select * from book where book_kind=100 or book_kind=300;
# [문제 9] book테이블에서 할인률이 없는 책정보 가져오기
select* from book where book_discount_rate=0;
# [문제 10] book테이블에서 할인률이 있는 책정보 가져오기
select* from book where not(book_discount_rate=0);

# [문제 1] book테이블에서 책 제목에 'java'가 포함되어 있는 책정보 가져오기
select * from book where book_title like '%java%';
# [문제 2] book테이블에서 책 제목에 'java' 또는 '자바' 가 포함되어 있는 책정보 가져오기
select * from book where book_title like '%java%' or book_title like '%자바%';
# [문제 3] book테이블에서 책 제목이 '나'로 시작되는 책정보 가져오기
select * from book where book_title like '나%';
# [문제 4] book테이블에서 책 제목이 '외국어'로 끝나는 책정보 가져오기
select * from book where book_title like '%외국어';
# [문제 5] member테이블에서 이름이 4글자인 회원정보 가져오기
select * from member where char_length(member_name)=4;
select * from member where member_name like '____';

# [문제] book테이블에서 도서명에 '자바'가 들어가는 도서 가져오기
# [조건] 도서명을 기준으로 정렬
select * from book where book_title like '%자바%' or book_title like '%java%' order by book_title ASC;

# [문제] member테이블에서 회원의 가입 일자를 한글 날짜 형식으로 가져오기
select member_name as '이름', date_format(member_reg_date,'%Y년 %m월 %d일') as '가입일' from member;

select cart.buyer, member_name from cart, member where cart.buyer=member.member_id;
select c.buyer, member_name from cart c, member m where c.buyer=m.member_id; -- 별칭으로 단축 가능alter

# 문제1 ) cart테이블에서 buyer의 이름과 cart의 가격 가져오기
select buyer, m. member_name, buy_price from cart c, member m where c.buyer=m.member_id;
# 문제2 ) cart테이블에서 회원이 구매한 도서의 할인되기 전의 가격과 할인율 가져오기
select b.book_title as '책제목', b.book_price as '할인전', b.book_discount_rate as '할인율', c.buy_price as '가격'
from cart c, book b where c.book_no=b.book_no;
# 문제3 ) cart테이블에서 회원이 구매한 도서의 할인되기 전의 가격이 2만원 이상인 도서정보와 할인율 가져오기
select b.book_title as'책제목', b.book_price as '가격' , b.book_discount_rate as'할인율',c.buy_price as'구매액'
from book b, cart c where b.book_no=c.book_no and b.book_price >=20000;

# [문제 1 ] member테이블에서 전체 회원 수 가져오기
select count(*) from member;
# [문제 2] member테이블에서 남자 회원 수 가져오기
select count(*) from member where member_gender='m';
# [문제 3] book테이블에서 전체 도서 가격의 총합 가져오기
select sum(book_price) from book;
# [문제 4] book테이블에서 전체 도서 가격의 평균 가져오기 - [조건] 소수점 이하 2자리까지 출력
select round(avg(book_price),2) from book;
# [문제 6] book테이블에서 도서 가격을 10%로 인상했을 때의 총합 가져오기
select floor(sum(book_price*1.1)) from book;
# [문제 7] book테이블에서 도서 가격이 가장 높은 도서가격 가져오기
select max(book_price) from book;

select count(*) from member;
select count(*) from member where member_gender='m';
select sum(book_price) from book;
select round(avg(book_price),2) from book;
select floor(sum(book_price*1.1)) from book;
select max(book_price) from book;

select book_kind, count(*) from book group by book_kind;

# [문제] cart테이블에서 회원별로 구입한 총 수량 가져오기
select buyer, count(*) from cart group by buyer;
select buyer, sum(buy_price),sum(buy_count) from cart group by buyer;

# [문제] cart테이블에서 회원이 구입한 도서의 수량이 2개 이상인회원의 id 가져오기
select buyer, sum(buy_count) from cart group by buyer having sum(buy_count)>=2;


#[1단계] 2015~ 2019년 사이의 출판 도서의 책분야, 책제목, 책재고량, 책 출판일
select book_kind, book_title, book_count, book_publishing_date from book 
where book_publishing_date>='2015-01-01' and book_publishing_date<'2020-01-01';

#[2단계] 책분야별로 그룹해서 총 갯수 
select book_kind, count(*) from book 
where book_publishing_date>='2015-01-01' and book_publishing_date<'2020-01-01'
group by book_kind ;

# [문제] book테이블에서 2015년에서 2019년 사이에 출간한 도서 중 재고 수량이 3개 이하인 도서를 종류별 개수 가져오기
select book_kind, count(*) from book  
where book_publishing_date>='2015-01-01' and book_publishing_date<'2020-01-01' and book_count<=3 group by book_kind;

# [문제] book테이블에서 전체 평균 가격보다 더 높은 도서정보 가져오기
select * from book
where (select avg(book_price) from book)<book_price;

# [문제] book테이블에서 가장 가격이 높은 도서 정보 가져오기
select * from book
where(select max(book_price) from book)=book_price;