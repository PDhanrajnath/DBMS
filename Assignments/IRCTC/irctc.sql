create table Train(Train_id int primary key, 
Train_name varchar(45), Train_Type varchar(45), 
start_station varchar(45), end_station varchar(45), 
next_halt varchar(45), ETA time);

create table Ticket(Ticket_no int primary key,
Ticket_init_station varchar(45), Ticket_end_station varchar(45),
Ticket_reserved varchar(45), Ticket_unreserved varchar(45),
Ticket_PNR_status integer);

create table Customer(Cust_id int primary key, Cust_name varchar(45) not null,
Cust_age int not null, Cust_gender varchar(7), Cust_phone varchar(10), Cust_dest_address varchar(55));


create table ReservedTicket(Train_id int, Ticket_no int, Cust_id int, 
Res_status varchar(20), Res_coach_id varchar(10), Res_seat_no int,
FOREIGN KEY (Train_id) REFERENCES Train(Train_id),
FOREIGN KEY (Ticket_no) REFERENCES Ticket(Ticket_no),
FOREIGN KEY (Cust_id) REFERENCES Customer(Cust_id));


create table UnreservedTicket(Ticket_no int, Cust_id int,
FOREIGN KEY (Ticket_no) REFERENCES Ticket(Ticket_no),
FOREIGN KEY (Cust_id) REFERENCES Customer(Cust_id));
show full tables;
