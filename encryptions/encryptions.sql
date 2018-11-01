#encyrptions.sql
#db version: mysql 5.7.22
#version: 0.01
#last update: 2018-10-22

#create table
drop table if exists vdin.encryptions;
create table vdin.encryptions (
    id int(11) unsigned auto_increment,
    encrypt_id mediumint(5) unsigned not null default 0,
    display_name varchar(20) not null,
    dept varchar(20) not null default 'unknown',
    term_type varchar(10) not null default '云桌面',
    belonged_to varchar(20) not null default '公司',
    hostname varchar(30) not null default 'known',
    updated_at datetime not null,
    deleted tinyint(1) not null default 0,
    primary key (id)
) engine=innodb;

/*
create table Encryptions.log (
    id int(11) unsigned auto_increment,
    updated_at datetime not null,
    content varchar(255) not null,
    memo varchar(200) not null default '无',
    primary key (id)
) engine=innodb
*/
