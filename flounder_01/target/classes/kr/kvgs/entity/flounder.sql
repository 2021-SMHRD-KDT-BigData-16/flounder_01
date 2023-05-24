############################################################################
# > #은 mysql에서 주석 입니다.
############################################################################
### mysql에 root 로 접속
# 0. mysql 폴더의 startup.bat 실행.
# 1. CMD 실행
# 2. mysql 폴더로 이동
#		cd C:\eGovFrame-4.0.0\bin\mysql-5.7.32\bin
# 3. root 로 접속 
#	mysql -u root -p
# 4. 패스워드 입력, 그냥 엔터


############################################################################
### mysql root 로 접속한 상태에서 진행

show databases;

CREATE DATABASE flounder default CHARACTER SET UTF8; 
SHOW DATABASES; 

#내부ip(localhost) 접속 가능 계정
#CREATE USER '계정아이디'@'localhost' IDENTIFIED BY '비밀번호';
create user 'flounder'@'localhost' identified by 'flounder';

show databases;

#특정 DB에 모든 권한 부여
#GRANT ALL PRIVILEGES ON 데이터베이스명.* TO '계정아이디'@'호스트';
grant all privileges on flounder.* to 'flounder'@'localhost';

#########################################################################
### 이클립스에서 Data Source Explorer - Database Connections 에서 DB 연결 진행. 

-- Table Create SQL
-- 테이블 생성 SQL - 


DROP TABLE dis_code;
DROP TABLE disease;
DROP TABLE detect_dis;
DROP TABLE reply;
DROP TABLE post;
DROP TABLE board;
DROP TABLE fuser;

commit;


CREATE TABLE fuser (
	uemail	VARCHAR(50)	NOT NULL PRIMARY KEY,
	upw	    VARCHAR(20)	NOT NULL,
	uname	VARCHAR(50)	NOT NULL
);

CREATE TABLE board (
	bid	      INT	        NOT NULL  AUTO_INCREMENT,
	btype	  VARCHAR(20)	NOT NULL
	
    , PRIMARY KEY (bid)
);


CREATE TABLE post (
	pid	        INT	            NOT NULL AUTO_INCREMENT,
	bid	        INT	            NOT NULL,
	uemail	    VARCHAR(50)	    NOT NULL,
	pdate	    DATETIME	    DEFAULT now(),
	title	    VARCHAR(100)	NOT NULL,
	ptext	    VARCHAR(2000)	NOT NULL,
	org_img	    VARCHAR(500)	NULL,
	detect_img	VARCHAR(500)	NULL
	
    , PRIMARY KEY (pid)
    , FOREIGN KEY (uemail) references fuser(uemail)
    , FOREIGN KEY (bid)    references board(bid)
	
);

CREATE TABLE reply (
	rid	     INT	        NOT NULL  AUTO_INCREMENT,
	pid	     INT	        NOT NULL,
	uemail	 VARCHAR(50)	NOT NULL,
	rdate	 DATETIME	    DEFAULT now(),
	reply	 VARCHAR(500)	NOT NULL
	
    , PRIMARY KEY (rid)
    , FOREIGN KEY (pid)    references post(pid)
    , FOREIGN KEY (uemail) references fuser(uemail)
);

CREATE TABLE detect_dis (
	dtid	INT	         NOT NULL AUTO_INCREMENT,
	pid	    INT	         NOT NULL,
	dcode	VARCHAR(20)	 NULL
	
    , PRIMARY KEY (dtid)
    , FOREIGN KEY (pid)    references post(pid)
);

CREATE TABLE disease (
	dnid	INT	            NOT NULL AUTO_INCREMENT,
	dname	VARCHAR(100)	NOT NULL,
	dinfo	VARCHAR(500)	NOT NULL,
	durl	VARCHAR(500)	NOT NULL
	
    , PRIMARY KEY (dnid)
);

CREATE TABLE dis_code (
	dcode	    VARCHAR(20)	    NOT NULL PRIMARY KEY,
	dname	    VARCHAR(100)	NOT NULL,
	dparts	    VARCHAR(100)	NULL,
	dsymptom	VARCHAR(100)	NULL,
	dnid	    INT	            NULL
    , FOREIGN KEY (dnid)    references disease(dnid)
);

commit;

insert into fuser values ('eee@eee.eee', 'eee', '관리자');
insert into fuser values ('mks@kvgs.com', 'aaa', '문경수');
insert into fuser values ('kkm@kvgs.com', 'aaa', '김권민');
insert into fuser values ('amy@kvgs.com', 'aaa', '안미연');
insert into fuser values ('shs@kvgs.com', 'aaa', '심형선');
insert into fuser values ('cjy@kvgs.com', 'aaa', '조준용');

commit;

select * from fuser;


