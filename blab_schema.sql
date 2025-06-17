DROP TABLE IF EXISTS blabs;

CREATE TABLE blabs (
  blabid int NOT NULL AUTO_INCREMENT,
  blabber varchar(100) NOT NULL,
  content varchar(250) DEFAULT NULL,
  timestamp datetime DEFAULT NULL,
  PRIMARY KEY (blabid)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS comments;

CREATE TABLE comments (
  commentid int NOT NULL AUTO_INCREMENT,
  blabid int NOT NULL,
  blabber varchar(100) NOT NULL,
  content varchar(250) DEFAULT NULL,
  timestamp datetime DEFAULT NULL,
  PRIMARY KEY (commentid)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS listeners;

CREATE TABLE listeners (
  blabber varchar(100) NOT NULL,
  listener varchar(100) NOT NULL,
  status varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS users_history;

CREATE TABLE users_history (
  eventid int NOT NULL AUTO_INCREMENT,
  blabber varchar(100) NOT NULL,
  event varchar(250) DEFAULT NULL,
  timestamp datetime DEFAULT NULL,
  PRIMARY KEY (eventid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
