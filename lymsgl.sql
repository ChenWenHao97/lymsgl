CREATE TABLE User
(
  uid         SERIAL PRIMARY KEY UNIQUE,
  username    VARCHAR(30) UNIQUE NOT NULL,
  phonenumber VARCHAR(11)        NOT NULL,
  password    VARCHAR(20)        NOT NULL,
  status      TINYINT            NOT NULL,
  realname    VARCHAR(30),
  idnumber    CHAR(18)
);

CREATE TABLE RealnameAuth
(
  raid     SERIAL PRIMARY KEY UNIQUE,
  uid      BIGINT      NOT NULL UNIQUE,
  realname VARCHAR(30) NOT NULL,
  idnumber CHAR(18)    NOT NULL
);

CREATE VIEW UserView AS
SELECT *,!isnull(realname) verified
from User;