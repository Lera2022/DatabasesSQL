SELECT * FROM Movies;
RENAME TABLE Movies TO Movie;
SELECT * FROM Movie;
ALTER TABLE Movie
ADD Language VARCHAR(2) NULL;
SELECT * FROM Movie;
ALTER TABLE Movie DROP COLUMN Language;
SELECT * FROM Movie;
ALTER TABLE Movie
ADD COLUMN Language VARCHAR(20) AFTER title ;
SELECT * FROM Movie;
ALTER TABLE Movie
ADD COLUMN p123 INT AFTER id ;
SELECT * FROM Movie;
ALTER TABLE Movie
ADD COLUMN TEST INT FIRST;
SELECT * FROM Movie;
create table producer
(
id int not null primary key auto_increment,
name varchar(45)
);
insert into producer (name) value ('Stiven');
alter table movie
add column producer_id int after title;
alter table movie
add foreign key(producer_id)references producer(id);
select * from producer as p
right join movie as m on m.producer_id=p.id;