-- H2 database

DROP TABLE IF EXISTS PARENT;
CREATE TABLE IF NOT EXISTS PARENT(ID IDENTITY PRIMARY KEY, PARENT_NUMBER VARCHAR(255), PARENT_NAME VARCHAR(255), FROM_TIME TIMESTAMP, TO_TIME TIMESTAMP);

DROP TABLE IF EXISTS CHILD;
CREATE TABLE IF NOT EXISTS CHILD(ID IDENTITY PRIMARY KEY, PARENT_ID INTEGER, PARENT_NUMBER VARCHAR(255), CHILD_NUMBER VARCHAR(255), CHILD_NAME VARCHAR(255), FROM_TIME TIMESTAMP, TO_TIME TIMESTAMP);

ALTER TABLE CHILD ADD FOREIGN KEY (PARENT_ID) REFERENCES PARENT(ID);

CREATE UNIQUE INDEX "PARENT_NUMBER_UNIQUE" ON PARENT (PARENT_NUMBER, FROM_TIME, TO_TIME);

CREATE UNIQUE INDEX "CHILD_NUMBER_UNIQUE" ON CHILD (PARENT_NUMBER, CHILD_NUMBER, FROM_TIME, TO_TIME);

INSERT INTO PARENT (PARENT_NUMBER, PARENT_NAME, FROM_TIME, TO_TIME) VALUES ('parent123', 'Parent Named Bill', '2017-03-15 18:47:52.069', '2017-03-16 18:47:52.069');
INSERT INTO PARENT (PARENT_NUMBER, PARENT_NAME, FROM_TIME, TO_TIME) VALUES ('parent123', 'Parent Named Sam', '2017-03-16 18:47:52.069', '2017-03-20 18:47:52.069');
INSERT INTO PARENT (PARENT_NUMBER, PARENT_NAME, FROM_TIME, TO_TIME) VALUES ('parent123', 'Parent Named Bill_Sam', '2017-03-20 18:47:52.069', '9999-12-30 00:00:00.000');

INSERT INTO CHILD (PARENT_ID, PARENT_NUMBER, CHILD_NUMBER, CHILD_NAME, FROM_TIME, TO_TIME) VALUES (3, 'parent123', 'child111', 'Child Named Name111', '2017-03-21 18:47:52.069', '9999-12-30 00:00:00.000');
INSERT INTO CHILD (PARENT_ID, PARENT_NUMBER, CHILD_NUMBER, CHILD_NAME, FROM_TIME, TO_TIME) VALUES (3, 'parent123', 'child222', 'Child Named Name222', '2017-03-22 18:47:52.069', '9999-12-30 00:00:00.000');
INSERT INTO CHILD (PARENT_ID, PARENT_NUMBER, CHILD_NUMBER, CHILD_NAME, FROM_TIME, TO_TIME) VALUES (3, 'parent123', 'child333', 'Child Named Name333', '2017-03-25 18:47:52.069', '9999-12-30 00:00:00.000');
INSERT INTO CHILD (PARENT_ID, PARENT_NUMBER, CHILD_NUMBER, CHILD_NAME, FROM_TIME, TO_TIME) VALUES (3, 'parent123', 'child444', 'Child Named Name444', '2017-03-27 18:47:52.069', '9999-12-30 00:00:00.000');



SELECT * FROM PARENT;
SELECT * FROM CHILD;
