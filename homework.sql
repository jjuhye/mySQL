CREATE DATABASE webtoon;

USE webtoon;

# 회원 테이블
CREATE TABLE member(
	m_level VARCHAR(10) NOT NULL,
    m_id VARCHAR(20) NOT NULL,
    m_pw VARCHAR(20) NOT NULL,
    m_point INT,
    m_name VARCHAR(10),
    m_regDate DATETIME,
    m_phone VARCHAR(20),
    m_age INT,
    m_email VARCHAR(30),
    m_gender VARCHAR(2)
);
DESC member;

# 웹툰 테이블
CREATE TABLE toon(
		t_title VARCHAR(50),
    t_writer VARCHAR(10),
    t_kind VARCHAR(10),
    t_content VARCHAR(500),
    t_regDate DATETIME,
    t_price INT,
    t_age INT,
    t_star INT,
    t_readCount INT,
    t_thumbnail VARCHAR(500)
);
DESC toon;

# 마이 페이지 테이블
CREATE TABLE mypage(
	mp_id VARCHAR(50),
    mp_favorite VARCHAR(100),
    mp_buyToon VARCHAR(50)
);
DESC mypage;

# 공지사항 게시판 테이블
CREATE TABLE notice(
	nt_num INT,
    nt_title VARCHAR(500),
    nt_content VARCHAR(1000),
    nt_kind VARCHAR(10),		-- 서비스 공지, 컨텐츠 공지
    nt_regDate DATETIME,
    nt_noticeFile VARCHAR(100)	-- 첨부 파일
);
DESC notice;

# 질문 게시판 테이블
CREATE TABLE qna(
	q_id VARCHAR(50),
    q_title VARCHAR(100),
    q_content VARCHAR(5000),
    q_ref INT,
    q_reStep INT,
    q_reLevel INT,
    q_readCount INT
);
DESC qna;

#------------------------------------------------------------------------------------------------------------------------------
DESC member;
INSERT INTO member VALUES('admin', 'admin', 'admin', 50000, '최재웅', '2013-03-27', '010-3333-4444', 23, 'aa@naver.com', '남');
INSERT INTO member VALUES('일반', 'qwer', 'qwer', 0, 'qwer', '2018-05-22', '010-1234-4454', 17, 'aa@naver.com', '남');
INSERT INTO member VALUES('일반', 'asdf', 'asdf', 0, '조형기', '2014-03-27', '010-1133-4444', 24, 'bb@naver.com', '여');
INSERT INTO member VALUES('일반', 'asd', 'asd', 0, '최재웅', '2015-03-27', '010-1212-4444', 22, 'cc@naver.com', '여');
INSERT INTO member VALUES('일반', 'zxcv', 'zxcv', 0, '김동현', '2017-05-22', '010-6789-4454', 19, 'dd@naver.com', '여');
INSERT INTO member VALUES('일반', 'zxc', 'zxc', 0, '추성훈', '2020-03-27', '010-6666-4444', 10, 'ee@naver.com', '여');
INSERT INTO member VALUES('일반', 'fgh', 'fgh', 0, '사랑이', '2021-03-27', '010-3333-5555', 9, 'ff@naver.com', '남');
INSERT INTO member VALUES('일반', 'fghj', 'fghj', 0, '담배충', '2020-05-22', '010-1111-4454', 15, 'gg@naver.com', '남');
INSERT INTO member VALUES('일반', 'qqwe', 'qqwe', 0, '누런니', '2019-03-27', '010-2222-4444', 32, 'ff@naver.com', '남');
INSERT INTO member VALUES('일반', 'jisu65', 'dfg345', 0, '지수', '2020-06-15', '010-4917-4223', 24, 'jisu65@naver.com', '여');
INSERT INTO member VALUES('일반', 'jennie22', 'ahty57', 0, '제니', '2021-04-24', '010-8345-7856', 22, 'jennie22@naver.com', '여');
INSERT INTO member VALUES('일반', 'rose523', '684', 0, '로제', '2017-03-13', '010-0767-3478', 26, 'rose523@naver.com', '여');
INSERT INTO member VALUES('일반', 'lisa32', '4217', 0, '리사', '2018-01-30', '010-7892-4734', 27, 'lisa32@naver.com', '여');
INSERT INTO member VALUES('일반', 'lsh52', 'xfg4', 0, '이석훈', '2019-07-01', '010-6544-8345', 32, 'lsh52@naver.com', '남');
INSERT INTO member VALUES('일반', 'kjh87', 'as6df4', 0, '김진호', '2019-11-11', '010-9045-1696', 35, 'kjh87@naver.com', '남');
INSERT INTO member VALUES('일반', 'kyj97', 'asf7', 0, '김용준', '2020-06-27', '010-7568-5123', 36, 'kyj97@naver.com', '남');
INSERT INTO member VALUES('일반', 'sana7', 'asf56', 0, '사나', '2018-09-09', '010-6759-7670', 29, 'sana7@naver.com', '여');
INSERT INTO member VALUES('일반', 'momo9', 'as9v', 0, '모모', '2019-01-14', '010-6496-6953', 27, 'momo9@naver.com', '여');
INSERT INTO member VALUES('일반', 'nayeon8', 'af123', 0, '나연', '2020-10-08', '010-9557-1265', 21, 'nayeon8@naver.com', '여');
INSERT INTO member VALUES('일반', 'zyu123', 'af1234', 0, '쯔위', '2021-06-25', '010-7587-7578', 20, 'zyu123@naver.com', '여');
SELECT * FROM member;
#------------------------------------------------------------------------------------------------------------------------------
DESC toon;
INSERT INTO toon VALUES('신의 탑', 'SIU', '판타지', '자신의 모든 것이었던 소녀를 쫓아 탑에 들어온 소년, 그리고 그런 소년을 시험하는 탑', '2021-07-05', 200, 12, 5, 9912, '25번째밤과 탑에서.jpg');
INSERT INTO toon VALUES('별이삼샵', '혀노', '드라마', 'ㄱ나니? 발신자 제한번호로 그녀에게 마음을 전했던 이야기. 혀노 작가가 담아낸 촌스럽지만 풋풋했던 2000년대 그 시절.', '2021-07-03', 300, 15, 5, 30005, '가자-계곡으로!(5).jpg');
INSERT INTO toon VALUES('마법스크롤 상인 지오', '엄재경', '판타지', '마법사인 듯, 마법사 아닌 마법사 같은 너! 오지오!', '2021-07-03', 200, 12, 4, 2242, '시즌3 110화 Mother 4.jpg');
INSERT INTO toon VALUES('맘마미안', '미티', '드라마', '아들보다 어려진 엄마?! 다 큰 아들의 목숨을 건 엄마 뒷바라지!', '2021-07-03', 200, 12, 4, 67642, '맘마미안 101화.jpg');
INSERT INTO toon VALUES('여신강림', '야옹이', '로맨스', '네웹 대표 글로벌 인기작! 주경, 수호, 서준. 세 청춘의 두근두근 눈호강 로맨스~♡ 메이크업으로 여신이 된 주경이는 꿈과 사랑을 이룰 수 있을까?', '2021-06-28', 200, 12, 5, 9912, '여신강림.jpg' );
INSERT INTO toon VALUES('용사가 돌아왔다', '나락/풍백', '액션', '김민수에게 복수를 하겠다는 일념 하나로 이세계를 구한 용사, 박정수. 그는 스스로는 구했지만, 세계를 구하지 못했고, 자신의 세상을 멸망시킨 용사들을 죽이기로 마음 먹는다.', '2021-06-28', 300, 15, 7, 12012, '용사가 돌아왔다.jpg' );
INSERT INTO toon VALUES('참교육', '채용택/한가람', '스토리,액션', '무너진 교권을 지키기 위해 교권보호국 소속 나화진의 참교육이 시작된다!<부활남> 채용택 작가 X <신석기녀> 한가람 작가의 신작!', '2021-07-05', 200, 15, 5, 9602, '참교육.jpg');
INSERT INTO toon VALUES('뷰티풀군바리', '설이 / 윤성원', '스토리,드라마', '"여자도 군대에 간다면?"본격 여자도 군대 가는 만화!', '2021-07-05', 200, 15, 5, 9002, '뷰티풀군바리.jpg');
INSERT INTO toon VALUES('독립일기', '자까', '일상', '처음으로 나만의 집이 생긴다면? 자까 작가의 나혼자 사는 이야기', '2021-06-19', 200, 0, 5, 9912, '독립일기.jpg');
INSERT INTO toon VALUES('연애혁명', '232', '드라마', '평범하면서 금사빠인 고등학생 순정남 공주영은 까칠하고 차가운 여학생 왕자림을 보고 사랑에 빠져버린다. 너무 다른 둘, 괜찮을까?', '2021-06-30', 200, 15, 5, 9912, '연애혁명.jpg');
INSERT INTO toon VALUES('외모지상주의', '박태준', '드라마', '못생기고 뚱뚱하다고 괴롭힘을 당하며 루저 인생만 살아온 내가 잘생겨졌다는 이유로 인싸가 됐다. 어느 날 자고 일어났더니 갑자기 완벽한 외모와 몸을 지닌 사람이 되어 깨어난다면?', '2021.07.01', 200, 15, 5, 9912, '외모지상주의.jpg');
INSERT INTO toon VALUES('갓 오브 하이스쿨', '박용제', '판타지', '자신의 모든 것이었던 소녀를 쫓아 탑에 들어온 소년, 그리고 그런 소년을 시험하는 탑', '2021-07-05', 200, 12, 5, 9912, '갓 오브 하이스쿨.jpg');
INSERT INTO toon VALUES('연애혁명', '232', '스토리,드라마', '평범하면서 금사빠인 고등학생 순정남 공주영은 까칠하고 차가운 여학생 왕자림을 보고 사랑에 빠져버린다. 너무 다른 둘, 괜찮을까?', '2021-06-30', 200, 15, 4, 6345, '우당탕탕 집에서.jpg');
INSERT INTO toon VALUES('더 복서', '정지훈', '스토리,액션', '재능있는 복서를 찾던 전설적인 트레이너 K는 기묘한 소년을 발견한다. 그의 충격적인 재능은 과연 축복일까, 저주일까?!', '2021-06-30', 200, 15, 8, 7231, '폭풍전야.jpg');
INSERT INTO toon VALUES('기기괴괴', '오성대', '옴니버스,스릴러', '기묘하고 괴상한 이야기들.', '2021-06-30', 300, 15, 6 ,8612, '소멸의 도시.jpg');
INSERT INTO toon VALUES('이두나!', '민송아', '스토리,로맨스', '(구)아이돌, 첫사랑, 소개팅녀까지 한 집에 모였다! <나노리스트> 민송아 작가의 두근두근 누나 리스트!', '2021-06-30', 200, 12, 2, 6541, '봄.jpg');
SELECT * FROM toon;
#------------------------------------------------------------------------------------------------------------------------------
DESC mypage;
INSERT INTO mypage VALUES('qwer', '신의 탑', 200);
INSERT INTO mypage VALUES('asdf', '외모지상주의', 200);
INSERT INTO mypage VALUES('asd', '별이삼샵', 300);
INSERT INTO mypage VALUES('zxcv', '마법스크롤 상인 지오', 200);
INSERT INTO mypage VALUES('zxc', '맘마미안', 200);
INSERT INTO mypage VALUES('fgh', '독립일기', 200);
INSERT INTO mypage VALUES('fghj', '용사가 돌아왔다', 300);
INSERT INTO mypage VALUES('qqwe', '참교육', 200);
INSERT INTO mypage VALUES('fgh', '별이삼샵', 300);
INSERT INTO mypage VALUES('fgh', '마법스크롤 상인 지오', 200);
INSERT INTO mypage VALUES('fghj', '뷰티풀군바리', 200);
INSERT INTO mypage VALUES('qwer', '갓 오브 하이스쿨', 200);
INSERT INTO mypage VALUES('qwer', '이두나!', 300);
INSERT INTO mypage VALUES('asdf', '기기괴괴', 300);
INSERT INTO mypage VALUES('asdf', '독립일기', 200);
INSERT INTO mypage VALUES('asd', '연애혁명', 200);
INSERT INTO mypage VALUES('asd', '별이삼샵', 300);
INSERT INTO mypage VALUES('fghj', '용사가 돌아왔다', 300);
INSERT INTO mypage VALUES('fgh', '신의 탑', 200);
SELECT * FROM mypage;
#------------------------------------------------------------------------------------------------------------------------------
DESC notice;
INSERT INTO notice VALUES(1001, '2021 웹툰 최강자전 개최 안내', '2021 최고의 슈퍼루키를 뽑기 위한 대한민국 대표 웹툰 경연대회! 연재 경력이 없는 아마추어 작가라면 누구든지 참여 가능!', '컨텐츠 공지', '2021-05-04', '참여신청서.jpg');
INSERT INTO notice VALUES(1002, '웹툰 App 내의 내 "순위상승" 표시가 적용됩니다', '특정 작품의 썸네일에 표시되는 "순위상승"은 전주대비 요일 내 순위가 큰폭으로 상승하거나 일정기간 연속적인 순위상승이 진행되는 작품에 표시됩니다. ', '서비스 공지', '2021-05-10', null);
INSERT INTO notice VALUES(1003, '댓글 기능추가 안내', '작품에 대한 독자 여러분의 의견이 활발하게 소통될 수 있도록 다양한 댓글기능 개선작업을 진행하여 관련 안내를 드립니다.', '서비스 공지', '2021-06-17', null);
INSERT INTO notice VALUES(1004, '2021 레드아이스 콘티 공모전', '오직 콘티로만 승부한다! 레드아이스와 함께 대작을 만들어갈 콘티 작가님을 모십니다', '컨텐츠 공지', '2021-06-21', '레드아이스 콘티 공모전 신청서.jpg');
INSERT INTO notice VALUES(1005, '2021년 6월 베스트 도전만화 승격작 발표', '내공(인기도) 점수를 기반으로, 운영진의 정성 평가가 더해져 매월 상위 순위의 도전만화 컨텐츠가 베스트 도전만화로 승격됩니다.', '서비스 공지', '2021-06-30', null);
SELECT * FROM notice;
#------------------------------------------------------------------------------------------------------------------------------
DESC qna;
INSERT INTO qna VALUES('qwer', '니가가라 하와이는 언제 연재가 되나요?', '언제 연재가 되는지 확인부탁드립니다.', 1, 1, 1, 0);
INSERT INTO qna VALUES('asd', '결제오류가 났습니다 처리방법좀 알려주세요.', '결제를 하였지만 포인트가 안들어왔습니다.', 2, 1, 1, 0);
INSERT INTO qna VALUES('asd', '결제내역은 어떻게 볼수있나요?', '경로좀 알려주세요.', 3, 1, 1, 0);
INSERT INTO qna VALUES('zxc', '쿠키를 사용하였지만 만화를 볼수가없어요.', '쿠키 반환 부탁드립니다.', 4, 1, 1, 0);
INSERT INTO qna VALUES('zxc', '서태지와 아이들은 언제부터 연재하나요?', '궁금해요.', 5, 1, 1, 0);
INSERT INTO qna VALUES('fgh', '기안84작가는 잘안씻나요?', '알려주세요.', 6, 1, 1, 0);
INSERT INTO qna VALUES('fgh', '결제오류가 났습니다 처리방법좀 알려주세요.', '결제를 하였지만 포인트가 안들어왔습니다.', 7, 1, 1, 0);
INSERT INTO qna VALUES('qqwe', '결제오류가 났습니다 처리방법좀 알려주세요.', '결제를 하였지만 포인트가 안들어왔습니다.', 8, 1, 1, 0);
SELECT * FROM qna;

# [문제 01] notice 테이블에서 게시글 종류가 서비스 공지인 것만 출력하시오.
select * from notice where nt_kind='서비스 공지' order by nt_regDate desc;

# [문제 02] toon 테이블의 전체 정보를 출력하시오.
select * from toon;

# [문제 03] toon 테이블에서 스토리 장르가 포함된 것만 출력하시오.
select * from toon where t_kind like '%스토리%';

# [문제 04] toon 테이블에서 15세 연령가 웹툰만 출력하시오.
select * from toon where t_age='15';

# [문제 05] toon 테이블에서 웹툰 조회수 순으로 내림차순 정렬하여 출력하시오.
select * from toon order by t_readCount desc;

# [문제 06] toon 테이블에서 웹툰 등록일이 토요일인 웹툰을 검색해 출력하시오.
select * from toon where dayofweek(t_regDate)=7;

# [문제 07] mypage 테이블에서 별이삼샵 웹툰을 구매한 회원목록을 출력하시오.
select mp_id, mp_favorite from mypage where mp_favorite='별이삼샵';

# [문제 08] mypage 테이블에서 'asd' 회원이 구입한 총 가격을 출력하시오.
select mp_id, sum(mp_buyToon) from mypage where mp_id='asd';

# [문제 09] mypage 테이블에서 웹툰 총 구매 가격이 500원 이상 인 회원의 아이디와 가격을 출력하시오.
select mp_id, sum(mp_buyToon) from mypage group by mp_id having sum(mp_buyToon)>=500;

# [문제 10] mypage 테이블에서 토요일 웹툰을 산 회원 목록과 웹툰이름을 출력하시오.
#select mp_id, t.t_title from mypage, toon t where dayofweek(t_regDate)=7;

# [문제 11] mypage 테이블에서 회원당 평균 소비량을 출력하시오.
select mp_id, avg(mp_buyToon) from mypage group by mp_id;

# [문제 12] member 테이블에서 회원 중 20대인 회원의 수를 출력하시오.
select count(*) from member where m_age>=20 and m_age<30;

# [문제 13] member 테이블에서 회원 중에 남자회원의 총 수와 여자회원의 총 수를 출력하시오.
select m_gender, count(*) from member group by m_gender;

# [문제 14] member 테이블에서 회원 나이순으로 내림차순 정렬하여 출력하시오.
select * from member order by m_age desc;

# [문제 15] 오래된 회원순으로 정렬(가입일자 순으로 오름차순 정렬)
select * from member order by m_regDate;

# [문제 16] qna 테이블에서 작성자가 'qwer'인 게시글 정보를 출력하시오.
select * from qna where q_id='qwer';

# [문제 17] qna 게시글 제목에 '오류'가 들어가는 게시물의 총 개수를 출력하시오.
select count(*) from qna where q_title like '%오류%';

# [문제 18] qna 테이블에서 회원별 게시글 개수 출력하시오.
select q_id, count(*) from qna group by q_id;
