#mysql :5.7.22
#ver: 0.0.1
#last_update: 2018-10-25
#db: vdin
#dbuser: vdin
#dbpass: vdin1234

drop database if exists vdin;
create database vdin default character set 'utf8';

grant all privileges on vdin.* to 'vdin'@'%' identified by 'vdin1234';
flush privileges;

#create log table
drop table if exists vdin.logs;
create table vdin.logs (
    id int(11) unsigned auto_increment,
    content varchar(255) not null,
    updated_at datetime not null,
    memo varchar(255) not null default '无',
    primary key (id)
) engine=innodb;
