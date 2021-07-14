create table Movie(Movie_id int primary key, Movie_title varchar(20) not null, Movie_description varchar(45),
Movie_release_date date, Movie_actors int, last_updated timestamp);

create table TVSeries(Series_id int primary key, Series_title varchar(20) not null, Series_description varchar(45),
Series_release_date date, Series_actors int, Series_count int);

create table Actor(Actor_id int primary key, first_name varchar(20) not null, last_name varchar(45) not null,
Actor_age int, gender varchar(7), Actor_title varchar(45));

create table Movie_Actors(Movie_id int, Actor_id int, Last_updated timestamp,
foreign key (Movie_id) references Movie(Movie_id),
foreign key (Actor_id) references Actor(Actor_id) );

create table TV_Series_Actors(Series_id int, Actor_id int, Last_updated timestamp,
foreign key (Series_id) references TVSeries(Series_id),
foreign key (Actor_id) references Actor(Actor_id));

show full tables;