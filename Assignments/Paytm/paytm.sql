use PAYTM;
show tables;

create table Customers(cust_id int primary key, first_name varchar(10), last_name varchar(10), phone_no int,
email_id varchar(20), address varchar(45));

create table Accounts(Acc_id int primary key, Acc_holder_name varchar(45), Acc_Number integer,
Acc_Balance integer, Last_transact varchar(45), Last_transact_time timestamp);

create table Branches(Br_id int primary key, Br_name varchar(20), Br_Manager_name varchar(25),
Br_address varchar(45), contact_number int, Br_status varchar(10));


create table Super_Table(cust_id int, Acc_id int, Br_id int, log_record varchar(90),
foreign key (cust_id) references Customers(cust_id),
foreign key (Acc_id) references Accounts(Acc_id),
foreign key (Br_id) references Branches(Br_id));