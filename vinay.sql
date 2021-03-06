CREATE TABLE USERS(
USER_ID VARCHAR(20)PRIMARY KEY,
USER_EMAIL VARCHAR(80)NOT NULL,
FIRST_NAME VARCHAR(50)NOT NULL,
LAST_NAME VARCHAR(50)NOT NULL,
CITY VARCHAR(50)NOT NULL,
STATE VARCHAR(50)NOT NULL,
ZIP_CODE VARCHAR(50)NOT NULL
);

INSERT INTO USERS(USER_ID,USER_EMAIL,FIRST_NAME,LAST_NAME,CITY,STATE,ZIP_CODE)VALUES('MA12','alex@ymail.com','alex','jones','houston','texas','75001');
INSERT INTO USERS(USER_ID,USER_EMAIL,FIRST_NAME,LAST_NAME,CITY,STATE,ZIP_CODE)VALUES('PO45','emma.john@gmail.com','emma','stone','albany','new work','10008');
INSERT INTO USERS(USER_ID,USER_EMAIL,FIRST_NAME,LAST_NAME,CITY,STATE,ZIP_CODE)VALUES('LA33','victoria@yahoo.com','victoria','aurora','istanbul','turkey','34000');
INSERT INTO USERS(USER_ID,USER_EMAIL,FIRST_NAME,LAST_NAME,CITY,STATE,ZIP_CODE)VALUES('CH99','joe.1997@hotmailmail.com','joe','johnson','los angeles','california','90201');
INSERT INTO USERS(USER_ID,USER_EMAIL,FIRST_NAME,LAST_NAME,CITY,STATE,ZIP_CODE)VALUES('DA74','dlany01@live.com','dany','william','miami','florida','32006');

CREATE TABLE USERSDETAILS(
USER_ID VARCHAR(50)PRIMARY KEY,
USER_EMAIL VARCHAR(50)NOT NULL,
FIRST_NAME VARCHAR(50)NOT NULL,
LAST_NAME VARCHAR(50)NOT NULL
);

DESC USERSDETAILS;

INSERT INTO USERSDETAILS(USER_ID,USER_EMAIL,FIRST_NAME,LAST_NAME)VALUES('MA12','alex@ymail.com','alex','jones');
INSERT INTO USERSDETAILS(USER_ID,USER_EMAIL,FIRST_NAME,LAST_NAME)VALUES('PO45','emma.john@gmail.com','emma','stone');
INSERT INTO USERSDETAILS(USER_ID,USER_EMAIL,FIRST_NAME,LAST_NAME)VALUES('LA33','victoria@yahoo.com','victoria','aurora');
INSERT INTO USERSDETAILS(USER_ID,USER_EMAIL,FIRST_NAME,LAST_NAME)VALUES('CH99','joe.1997@hotmailmail.com','joe','johnson');
INSERT INTO USERSDETAILS(USER_ID,USER_EMAIL,FIRST_NAME,LAST_NAME)VALUES('DA74','dlany01@live.com','dany','william');

CREATE TABLE ADDRESS(
CITY VARCHAR(20)NOT NULL,
STATE VARCHAR(20)NOT NULL,
ZIP_CODE VARCHAR(11) PRIMARY KEY
);

DESC ADDRESS;

INSERT INTO ADDRESS(CITY,STATE,ZIP_CODE)VALUES('houston','texas','75001');
INSERT INTO ADDRESS(CITY,STATE,ZIP_CODE)VALUES('albany','new work','10008');
INSERT INTO ADDRESS(CITY,STATE,ZIP_CODE)VALUES('istanbul','turkey','34000');
INSERT INTO ADDRESS(CITY,STATE,ZIP_CODE)VALUES('los angeles','california','90201');
INSERT INTO ADDRESS(CITY,STATE,ZIP_CODE)VALUES('miami','florida','32006');
CREATE TABLE USERS_1(
USERS_ID VARCHAR(11)NOT NULL,
USER_EMAIL VARCHAR(60)NOT NULL,
CONSTRAINT USERDATA1_PK PRIMARY KEY (USERS_ID)
);

DESC USERS_1;

INSERT INTO USERS_1(USERS_ID,USER_EMAIL)VALUES('MA12','alex@ymail.com');
INSERT INTO USERS_1(USERS_ID,USER_EMAIL)VALUES('PO45','emma.john@gmail.com');
INSERT INTO USERS_1(USERS_ID,USER_EMAIL)VALUES('LA33','victoria@yahoo.com');
INSERT INTO USERS_1(USERS_ID,USER_EMAIL)VALUES('CH99','joe.1997@hotmailmail.com');
INSERT INTO USERS_1(USERS_ID,USER_EMAIL)VALUES('DA74','dlany01@live.com');

CREATE TABLE USER_2(
USERS_ID VARCHAR(11),
FIRST_NAME VARCHAR(20)NOT NULL,
LAST_NAME VARCHAR(50)NOT NULL,
CONSTRAINT FK_USERID
FOREIGN KEY (USERS_ID)
REFERENCES USERS_1(USERS_ID)
 );
 
ALTER TABLE USER_2 DROP CONSTRAINT USERS_ID;

DESC USER_2;

INSERT INTO USER_2(USERS_ID,FIRST_NAME,LAST_NAME)VALUES('MA12','alex','jones');
INSERT INTO USER_2(USERS_ID,FIRST_NAME,LAST_NAME)VALUES('PO45','emma','stone');
INSERT INTO USER_2(USERS_ID,FIRST_NAME,LAST_NAME)VALUES('LA33','victoria','aurora');
INSERT INTO USER_2(USERS_ID,FIRST_NAME,LAST_NAME)VALUES('CH99','joe','johnson');
INSERT INTO USER_2(USERS_ID,FIRST_NAME,LAST_NAME)VALUES('DA74','dany','william');

CREATE TABLE ADDRESS_A(
CITY VARCHAR(20)NOT NULL,
STATE VARCHAR(20)NOT NULL,
ZIP_CODE VARCHAR(11) PRIMARY KEY
);

DESC ADDRESS_A;

INSERT INTO ADDRESS_A(CITY,STATE,ZIP_CODE)VALUES('houston','texas','75001');
INSERT INTO ADDRESS_A(CITY,STATE,ZIP_CODE)VALUES('albany','new work','10008');
INSERT INTO ADDRESS_A(CITY,STATE,ZIP_CODE)VALUES('istanbul','turkey','34000');
INSERT INTO ADDRESS_A(CITY,STATE,ZIP_CODE)VALUES('los angeles','california','90201');
INSERT INTO ADDRESS_A(CITY,STATE,ZIP_CODE)VALUES('miami','florida','32006');
� 2020 GitHub, Inc.