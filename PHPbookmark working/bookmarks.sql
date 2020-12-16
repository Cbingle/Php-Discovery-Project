create database bookmarks;
use bookmarks;
create table user (
username varchar(16) not null primary key,
passwd char(40) not null,
email varchar(100) not null
);
create table bookmark (
username varchar(16) not null,
bm_URL varchar(255) not null,
index (username),
index (bm_URL),
primary key(username, bm_URL)
);
grant select, insert, update, delete
on bookmarks.*
to bm_user@localhost identified by 'root';