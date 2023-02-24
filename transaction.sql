#트렌젝션alter
#int(11) : 정수
#decimal(정수길이, 소숫점길이) 총 19자리, 소숫점4자리 : int보다 더 큰 숫자 표현을 해주는 자료형 타입

CREATE TABLE account(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    amount DECIMAL(19, 4) NOT NULL
);

#거래내역 기록 테이블
CREATE TABLE transferHistory(
	id INT AUTO_INCREMENT PRIMARY KEY,
    from_id INT NOT NULL,
    to_id INT NOT NULL,
    amount DECIMAL(19, 4) NOT NULL,
    trans_date DATETIME
);

INSERT INTO account(name, amount) VALUES('박병준', 1000000), ('조영곤', 90000);

select * from account;
select * from transferHistory;

-- rollback : 시작점으로 돌아간다alter

start transaction;
-- 수정
update account set amount=amount-50000 where id=1;
update account set amount=amount+50000 where id=2;
insert into transferHistory (from_id, to_id, amount, trans_date) value(1,2,50000,now());

select * from account;
select * from transferHistory;

-- if 실패alter
rollback;
-- 성공
commit; -- 끝점 : 정상처리 후 commit으로 종료