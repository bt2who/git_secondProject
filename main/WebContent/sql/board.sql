--기존DB 데이터 사용

CREATE TABLE board(
     seq NUMBER NOT NULL,               
     id VARCHAR2(20) NOT NULL,          
     name VARCHAR2(40) NOT NULL,      
     email VARCHAR2(40),                 
     subject VARCHAR2(255) NOT NULL,  
     content VARCHAR2(4000) NOT NULL,  
	 ref NUMBER NOT NULL,                 
     lev NUMBER DEFAULT 0 NOT NULL,     
     step NUMBER DEFAULT 0 NOT NULL,    
     pseq NUMBER DEFAULT 0 NOT NULL,    
     reply NUMBER DEFAULT 0 NOT NULL,   

     hit NUMBER DEFAULT 0,             
     logtime DATE DEFAULT SYSDATE
 );

--시퀀스 객체
CREATE SEQUENCE seq_board  NOCACHE NOCYCLE;