
create table Customers(Cust_id int primary key, first_name varchar(20), last_name varchar(20), 
phone_num int, Cust_address varchar(65), email_id varchar(45));

create table Orders(order_id int primary key, no_of_items int, total_amount int, order_expected_delivery time);

create table Customers_Orders(Cust_id int, order_id int, order_recv_status datetime, delivery date,
foreign key (Cust_id) references Customers(Cust_id),
foreign key (order_id) references Orders(order_id));

create table Suppliers(Supplier_id int primary key, Supplier_name varchar(45),contact int,
Supplier_address varchar(45), total_items int);

create table Items(item_id int primary key, item_name varchar(20), item_type varchar(20),
 item_company varchar(10),
item_cost int, item_tax int, item_avail bool, item_review varchar(90));

create table Suppliers_Items(Supplier_id int, item_id int, current_status varchar(20),
stock_left varchar(20),
foreign key (Supplier_id) references Suppliers(Supplier_id),
foreign key (item_id) references Items(item_id));



create table Orders_Items(order_id int, item_id int, no_of_items_ordered int,
foreign key (order_id) references Orders(order_id),
foreign key (item_id) references Items(item_id));

show full tables;