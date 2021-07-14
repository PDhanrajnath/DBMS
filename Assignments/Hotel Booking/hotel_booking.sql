create table Hotel(H_id int primary key, H_name varchar(45) not null,
H_contact_num int(10) not null, H_city varchar(10), H_address varchar(55),
H_capacity int, H_available_rooms int, H_room_description varchar(65));

create table Customer(Cust_id int primary key, Cust_name varchar(45) not null,
Cust_age int not null, Cust_gender varchar(7), Cust_phone varchar(10), Cust_address varchar(55));

create table Hotel_R_Customer(H_id int, Cust_id int,
Join_date datetime, Check_In datetime, num_of_days int, check_out datetime,
bill integer,
foreign key (H_id) references Hotel(H_id),
foreign key (Cust_id) references Customer(Cust_id));