DROP DATABASE IF EXISTS blab;
CREATE DATABASE blab;
USE blab;
DROP TABLE IF EXISTS blabs;
CREATE TABLE blabs (
  blabid int NOT NULL ,
  blabber varchar(100) NOT NULL,
  content varchar(250) DEFAULT NULL,
  timestamp datetime DEFAULT NULL,
  PRIMARY KEY (blabid)
);
DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
  commentid int NOT NULL ,
  blabid int NOT NULL,
  blabber varchar(100) NOT NULL,
  content varchar(250) DEFAULT NULL,
  timestamp datetime DEFAULT NULL,
  PRIMARY KEY (commentid)
);
DROP TABLE IF EXISTS listeners;
CREATE TABLE listeners (
  blabber varchar(100) NOT NULL,
  listener varchar(100) NOT NULL,
  status varchar(20) DEFAULT NULL
);
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  username varchar(100) NOT NULL,
  password varchar(100) DEFAULT NULL,
  password_hint varchar(100) DEFAULT NULL,
  created_at datetime DEFAULT NULL,
  last_login datetime DEFAULT NULL,
  real_name varchar(100) DEFAULT NULL,
  blab_name varchar(100) DEFAULT NULL,
  totp_secret varchar(100) DEFAULT NULL,
  PRIMARY KEY (username)
);
DROP TABLE IF EXISTS users_history;
CREATE TABLE users_history (
  eventid int NOT NULL ,
  blabber varchar(100) NOT NULL,
  event varchar(250) DEFAULT NULL,
  timestamp datetime DEFAULT NULL,
  PRIMARY KEY (eventid)
);
INSERT INTO blabs (blabid, blabber, content, timestamp) VALUES
(1, 'darth', 'I find your lack of faith disturbing', '2017-09-29 16:34:21'),
(2, 'yoda', 'Do. Or do not. There is no try.', '2017-09-29 16:35:00');
INSERT INTO comments (commentid, blabid, blabber, content, timestamp) VALUES
(1, 1, 'yoda', 'I sense much fear in you.', '2017-09-29 16:36:12'),
(2, 2, 'obiwan', 'Use the Force, Luke.', '2017-09-29 16:36:45');
INSERT INTO listeners (blabber, listener, status) VALUES
('darth', 'yoda', 'active'),
('yoda', 'obiwan', 'active');
INSERT INTO users (username, password, password_hint, created_at, last_login, real_name, blab_name, totp_secret) VALUES
('darth', 'sith123', 'It''s dark.', '2017-09-01 08:00:00', '2017-09-29 16:30:00', 'Darth Vader', 'LordVader', NULL),
('yoda', 'jedi456', 'Green and wise.', '2017-09-02 08:00:00', '2017-09-29 16:32:00', 'Yoda Master', 'Yoda', NULL),
('obiwan', 'force789', 'You were my brother.', '2017-09-03 08:00:00', '2017-09-29 16:33:00', 'Obi-Wan Kenobi', 'ObiWan', NULL);
INSERT INTO users_history (eventid, blabber, event, timestamp) VALUES
(1, 'darth', 'Joined the dark side.', '2017-09-01 08:00:00'),
(2, 'yoda', 'Lifted an X-Wing.', '2017-09-02 10:00:00');
