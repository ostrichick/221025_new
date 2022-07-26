SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS ATTACH;
DROP TABLE IF EXISTS COMMENT_section;
DROP TABLE IF EXISTS Board;
DROP TABLE IF EXISTS MEMBER_INFO;




/* Create Tables */

-- 첨부파일
CREATE TABLE ATTACH
(
	ATTACH_ID int unsigned NOT NULL AUTO_INCREMENT COMMENT '첨부파일 관리번호',
	ORIGINAL_FILE_NAME varchar(300) NOT NULL COMMENT '원본 파일명',
	SYSTEM_FILE_NAME varchar(300) NOT NULL COMMENT '시스템 파일명',
	-- 
	-- 
	-- 
	BOARD_ID int unsigned NOT NULL COMMENT '게시글 관리번호 : 

',
	PRIMARY KEY (ATTACH_ID)
) COMMENT = '첨부파일';


-- 게시판
CREATE TABLE Board
(
	-- 
	-- 
	-- 
	BOARD_ID int unsigned NOT NULL AUTO_INCREMENT COMMENT '게시글 관리번호 : 

',
	BOARD_TITLE varchar(90) NOT NULL COMMENT '제목',
	MEMBER_NICKNAME varchar(30) NOT NULL COMMENT '작성자',
	BOARD_CONTENT varchar(2000) NOT NULL COMMENT '내용',
	WRITE_DATE datetime DEFAULT NOW() COMMENT '작성일',
	-- 1=YES
	-- 0=NO
	HIDDEN_YN char(1) DEFAULT '0' COMMENT '숨김여부 : 1=YES
0=NO',
	PRIMARY KEY (BOARD_ID),
	UNIQUE (MEMBER_NICKNAME)
) COMMENT = '게시판';


-- 댓글
CREATE TABLE COMMENT_section
(
	COMMENT_ID int unsigned NOT NULL AUTO_INCREMENT COMMENT '댓글 관리번호',
	-- 
	-- 
	-- 
	BOARD_ID int unsigned NOT NULL COMMENT '게시글 관리번호 : 

',
	COMMENT_CONTENT varchar(1500) COMMENT '댓글 내용',
	COMMENT_AUTHOR varchar(30) NOT NULL COMMENT '작성자',
	COMMENT_DATE datetime DEFAULT NOW() COMMENT '작성일',
	PRIMARY KEY (COMMENT_ID, BOARD_ID)
) COMMENT = '댓글';


-- 회원정보
CREATE TABLE MEMBER_INFO
(
	MEMBER_KEY int unsigned NOT NULL AUTO_INCREMENT COMMENT '회원 관리번호',
	MEMBER_ID varchar(30) NOT NULL COMMENT '회원 아이디',
	MEMBER_NAME varchar(21) NOT NULL COMMENT '이름',
	MEMBER_NICKNAME varchar(30) COMMENT '닉네임',
	MEMBER_PHONE char(15) COMMENT '휴대폰번호',
	MEMBER_REGDATE datetime NOT NULL COMMENT '가입일',
	-- 1=YES
	-- 0=NO
	DELEDE_YN char(2) DEFAULT '0' NOT NULL COMMENT '삭제여부 : 1=YES
0=NO',
	PRIMARY KEY (MEMBER_KEY),
	UNIQUE (MEMBER_ID),
	UNIQUE (MEMBER_NICKNAME),
	UNIQUE (MEMBER_PHONE)
) COMMENT = '회원정보';



/* Create Foreign Keys */

ALTER TABLE ATTACH
	ADD FOREIGN KEY (BOARD_ID)
	REFERENCES Board (BOARD_ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE COMMENT_section
	ADD FOREIGN KEY (BOARD_ID)
	REFERENCES Board (BOARD_ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE Board
	ADD FOREIGN KEY (MEMBER_NICKNAME)
	REFERENCES MEMBER_INFO (MEMBER_NICKNAME)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



