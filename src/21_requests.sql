create table books(
                      id serial primary key ,
                      name varchar,
                      country varchar,
                      published_year date,
                      price numeric,
                      Genre Genre
);
drop table books;
create type Genre as enum ('DETECTIVE','DRAMA','HISTORY','ROMANCE','BIOGRAPHY','FANTASY');
create type Gender as enum ('Male','Female');

create table authors (
                         id serial primary key ,
                         first_name varchar,
                         last_name varchar,
                         email varchar,
                         date_of_birth date,
                         country varchar,
                         Gender Gender
);
drop table authors;
create table publishers(
                           id serial primary key ,
                           name varchar
);
create table languages (
                           id serial primary key ,
                           language varchar
);
alter table books alter column name type varchar (50);
alter table authors add constraint email unique (email);
alter table languages alter column language set not null ;
alter table books add column language_id int references languages(id);
alter table books add column publisher_id int references publishers(id);
alter table books add column author_id int references authors(id);

insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');
insert into authors(first_name, last_name, email, date_of_birth, country, gender)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '9/10/1968', 'France', 'Female'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '10/11/1965', 'China', 'Female'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '5/6/1980', 'Germany', 'Male'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '4/4/1964', 'United States', 'Male'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '7/3/1967', 'France', 'Male'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '12/2/1964', 'Russia', 'Male'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '12/11/1983', 'China', 'Female'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1/9/1960', 'United States', 'Female'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '11/7/1978', 'France', 'Male'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '9/8/1962', 'Germany', 'Male'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '12/3/1984', 'Russia', 'Female'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '8/8/1983', 'Germany', 'Male'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '3/8/1980', 'Russia', 'Female'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '8/5/1966', 'Spain', 'Male'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '10/7/1962', 'United States', 'Female');

insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, published_year, price, genre, language_id, publisher_id, author_id)
values ('Taina', 'Russia', '11/12/2021', '568', 'DETECTIVE', '5', '12', '6'),
       ('Zvezdopad', 'Russia', '12/9/2004', '446', 'ROMANCE', '5', '13', '11'),
       ('Homo Faber', 'Germany', '4/10/2022', '772', 'FANTASY', '3', '5', '3'),
       ('Der Richter und Sein Henker', 'Germany', '2/1/2011', '780', 'DETECTIVE', '3', '3', '10'),
       ('Lord of the Flies', 'United States', '7/11/2015', '900', 'FANTASY', '1', '2', '4'),
       ('Un soir au club', 'France', '1/12/2018', '480', 'DRAMA', '2', '1', '1'),
       ('Voina', 'Russia', '12/6/2004', '880', 'HISTORY', '5', '4', '13'),
       ('Sun Tzu', 'China', '9/5/2022', '349', 'HISTORY', '4', '4', '2'),
       ('Emil und die Detektive', 'Germany', '6/11/2010', '228', 'DETECTIVE', '3', '5', '10'),
       ('Coule la Seine', 'France', '3/1/2015', '732', 'FANTASY', '2', '6', '1'),
       ('Love and hatred', 'Russia', '2/3/2012', '763', 'ROMANCE', '5', '14', '13'),
       ('Fantastic Mr Fox', 'United States', '3/10/2018', '309', 'FANTASY', '1', '9', '8'),
       ('Contes de la Bécasse', 'France', '10/5/2019', '378', 'ROMANCE', '2', '6', '9'),
       ('“The Death of Ivan Ilyich', 'Russia', '9/4/2000', '814', 'DRAMA', '5', '6', '6'),
       ('Bonjour Tristesse', 'France', '8/2/2015', '502', 'ROMANCE', '2', '8', '5'),
       ('Die Verwandlung', 'Germany', '6/9/2008', '305', 'DETECTIVE', '3', '7', '12'),
       ('The Inspector Barlach Mysteries', 'Germany', '3/10/2007', '566', 'DETECTIVE', '3', '3', '3'),
       ('LÉtranger', 'France', '11/4/2017', '422', 'ROMANCE', '2', '8', '5'),
       ('Lao Tse', 'China', '7/6/2005', '900', 'FANTASY', '4', '4', '2'),
       ('Semya', 'Russia', '4/12/2004', '194', 'DRAMA', '5', '13', '11'),
       ('Empty World', 'United States', '1/4/2008', '324', 'FANTASY', '1', '11', '15'),
       ('Domainer', 'Germany', '1/6/2020', '420', 'ROMANCE', '3', '5', '10'),
       ('The Fault in Our Stars', 'United States', '2/3/2008', '396', 'ROMANCE', '1', '9', '4'),
       ('Die R uber', 'Germany', '6/5/2020', '300', 'ROMANCE', '3', '7', '12'),
       ('Jung Chang', 'China', '5/4/2021', '600', 'HISTORY', '4', '10', '7'),
       ('Les Aventures de Tintin', 'France', '4/10/2015', '582', 'DRAMA', '2', '1', '5'),
       ('Unvollendete Geschichte', 'Germany', '12/12/2010', '269', 'DETECTIVE', '3', '5', '10'),
       ('Amy Tan', 'China', '1/9/2023', '486', 'DRAMA', '4', '4', '7'),
       ('Krasnaya luna', 'Russia', '2/7/2020', '550', 'FANTASY', '5', '12', '11'),
       ('Emma', 'United States', '10/11/2021', '599', 'BIOGRAPHY', '1', '2', '15');

select books.name,books.published_year,books.genre from books;--1
select distinct authors.country from authors;--2
select books.name,books.published_year from books where published_year between '01/01/2020' and '01/01/2023';--3
select books.name,books.Genre from books where Genre = 'DETECTIVE';--4
select authors.first_name ||' '|| authors.last_name as author from authors ;--5
select authors.first_name ||' '|| authors.last_name as author,authors.country from authors where authors.country = 'France' order by country and authors.country = 'Germany';--6
select books.name,books.country,books.published_year,books.price,books.genre from books where price >500 and Genre!= 'ROMANCE';--7
select authors.first_name ||' '|| authors.last_name,authors.gender from authors where authors.gender= 'Female' limit 3;--8
select authors.first_name ||' '|| authors.last_name as author,authors.gender,authors.email from authors where  authors.gender= 'Female' and authors.email like '%.com' and authors.first_name like '____';--9
select authors.country,count(authors) from authors group by country;--10
select country,count(*)from authors group by country having count(*)=3 order by country;
select books.genre,count(books.genre) from books group by books.genre;--12
select books.genre,min(books.price) as minimum_price from books where books.genre in ('ROMANCE' ,'DETECTIVE') group by books.genre; --13
select books.genre,count(*) as all_books from books where books.genre in ('HISTORY','BIOGRAPHY') group by books.genre;--14
select books.name,publishers.name,languages.language from books inner join publishers on books.publisher_id=publishers.id inner join languages on books.language_id=languages.id;--15
select authors,publishers from books full join authors on books.author_id=authors.id full join publishers on books.publisher_id=publishers.id ;--16
select authors.first_name ||' '|| authors.last_name as author,books from books full join authors on books.author_id=authors.id;--17
select languages,count(*) as books from books full join languages on books.language_id=languages.id group by languages order by languages desc ;--18
select publishers,round(avg(books.price))from books full join publishers on books.publisher_id=publishers.id group by publishers;--19
select authors.first_name ||' '|| authors.last_name as author,books from books inner join authors on books.author_id=authors.id where published_year between '01/01/2010'and'01/01/2015';--20
select authors.first_name ||' '|| authors.last_name as author,sum(books.price)from books full join authors on books.author_id=authors.id where published_year between '01/01/2010'and'01/01/2015' group by authors.first_name ||' '|| authors.last_name;--21



























