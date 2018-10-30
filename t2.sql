create database t2db;


use t2db;
CREATE TABLE `user` (
  `user_id` int(6) NOT NULL auto_increment,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `user_name` varchar(20) NOT NULL,
  `user_pwd` varchar(100) NOT NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `qunique_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table `role` (
`role_id` int(11) NOT NULL auto_increment,
`role_name` varchar(255) NOT NULL,
 PRIMARY KEY  (`role_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `user_role` (
`user_id` int(6) NOT NULL ,
`role_id` int(11) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `role` VALUES ('1','admin');
Insert into `user` VALUES ('1', '1', 'ada', '$2a$10$Y1TZfujQdjRChDC7L.5LTOX805PDjdS8IuUYxqwtpnPRCAVdZeK06');
insert into `user_role` VALUES('1', '1')