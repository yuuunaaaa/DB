insert into bbs values (null, 'smile', 'go!', 'apple')

insert into bbs(title, content, writer) values ('smile2', 'go2!', 'apple')

select * from bbs

create table movie(
	id varchar(200) primary key,
	title varchar(200) not null,
	content varchar(200) not null,
	location varchar(200) not null,
	director varchar(200)
)
