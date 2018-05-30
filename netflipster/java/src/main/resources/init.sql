CREATE TABLE USERS (
    ID VARCHAR(255) AUTO_INCREMENT,
    NAME VARCHAR(255),
    PASSWORD VARCHAR(255),
    PRIMARY KEY(ID)
);

INSERT INTO USERS(ID, NAME, PASSWORD) VALUES (0, 'user0', '123456');
INSERT INTO USERS(ID, NAME, PASSWORD) VALUES (1, 'user1', '123456');
INSERT INTO USERS(ID, NAME, PASSWORD) VALUES (2, 'user2', '123456');
INSERT INTO USERS(ID, NAME, PASSWORD) VALUES (3, 'user3', '123456');
INSERT INTO USERS(ID, NAME, PASSWORD) VALUES (4, 'user4', '123456');
INSERT INTO USERS(ID, NAME, PASSWORD) VALUES (5, 'user5', '123456');
INSERT INTO USERS(ID, NAME, PASSWORD) VALUES (6, 'user6', '123456');
INSERT INTO USERS(ID, NAME, PASSWORD) VALUES (7, 'user7', '123456');

CREATE TABLE VHS (
    ID INT,
    NAME VARCHAR(255),
    PRIMARY KEY(ID)
);

CREATE TABLE BOOKINGS (
    VHS_ID INT,
    USER_ID VARCHAR(255),
    QUANTITY VARCHAR(255),
    PRIMARY KEY(VHS_ID, USER_ID),
    FOREIGN KEY(VHS_ID) REFERENCES VHS(ID),
    FOREIGN KEY(USER_ID) REFERENCES USERS(ID)
);

INSERT INTO VHS(ID, NAME) VALUES(1,'Harry Potter and the Philosophers Stone (2001)');
INSERT INTO VHS(ID, NAME) VALUES(2,'Harry Potter and the Chamber of Secrets (2002)');
INSERT INTO VHS(ID, NAME) VALUES(3,'Harry Potter and the Prisoner of Azkaban (2004)');
INSERT INTO VHS(ID, NAME) VALUES(4,'Harry Potter and the Goblet of Fire (2005)');
INSERT INTO VHS(ID, NAME) VALUES(5,'Harry Potter and the Order of the Phoenix (2007)');
INSERT INTO VHS(ID, NAME) VALUES(6,'Harry Potter and the Half-Blood Prince (2009)');
INSERT INTO VHS(ID, NAME) VALUES(7,'Harry Potter and the Deathly Hallows – Part 1 (2010)');
INSERT INTO VHS(ID, NAME) VALUES(8,'Harry Potter and the Deathly Hallows – Part 2 (2011)');
INSERT INTO VHS(ID, NAME) VALUES(0,'https://youtu.be/dQw4w9WgXcQ');
