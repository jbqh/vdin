# create database
# ver: 0.1
# mysql: 5.7
# lastupdate: 2018-10-31
# replace DBNAME to own DBNAME
# replace DBUSER to own DBUSER
# replace DBPASSWORD to own DBPASSWORD
# replace HOST to own HOST

drop database if exists DBNAME;
create database default character set 'utf8';
grant all privileges on DBNAME.* to 'DBUSER'@'localhost' identified by 'DBPASSWORD';
grant all privileges on DBNAME.* to 'DBUSER'@'HOST' identified by 'DBPASSWORD';

#create common table logs;
drop table if exists DBNAME.logs;
create table DBNAME.logs (
    id int(11) unsigned auto_increment;
    updated_at datetime not null;
    content varchar(255) not null;
    opter varchar(10) not null;
    primary key (id)
) engine=innodb;
