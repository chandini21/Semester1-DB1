create table F18_2_Restaurant (
    rest_id int not null,
    name varchar(50) not null,
    locality varchar(250) not null,
    zip_code varchar(10) not null,
    city varchar(50) not null,
    base_delivery_charge int ,
    commision_offered int,
    primary key (rest_id));

create table F18_2_Menu_Item (
    item_id int not null,
    item_name varchar(50) not null,
    item_category varchar(50),
    cuisine varchar(50),
    dietary_preference varchar(50),
    price int,
    rest_id int not null,
    primary key (item_id),
    FOREIGN KEY (rest_id) REFERENCES F18_2_Restaurant(rest_id));

create table F18_2_Customer (
    customer_id int not null,
    name varchar(50) not null,
    phone_number varchar(20),
    zip_code varchar(20),
    city varchar(50),
    locality varchar(250),
    primary key (customer_id));

create table F18_2_Delievery_Agent (
    da_id int not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    mobile_number varchar(20),
    zip_code varchar(20),
    dob date,
    work_location varchar(50),
    shift_opted varchar(50),
    primary key (da_id));

create table F18_2_Works_For (
	rest_id int not null,
	da_id int not null,
	Foreign key (rest_id) references F18_2_Restaurant(rest_id),
	Foreign key (da_id) references F18_2_Delievery_Agent(da_id));

create table F18_2_Restaurant_Times (
    open_time varchar(10),
    close_time varchar(10),
    rest_id int not null,
    primary key (rest_id, open_time, close_time),
    Foreign key (rest_id) references F18_2_Restaurant(rest_id));

create table F18_2_Orders (
    rest_id int not null,
    customer_id int,
    item_id int,
    order_time varchar(10),
    order_date date,
    payment_mode varchar(50),
    primary key (rest_id, customer_id, item_id, order_time),
    Foreign key (rest_id) references F18_2_Restaurant(rest_id),
    Foreign key (customer_id) references F18_2_Customer(customer_id),
    Foreign key (item_id) references F18_2_Menu_Item(item_id));

create table F18_2_Delivers (
    rest_id int not null,
    customer_id int not null,
    da_id int not null,
    pickup_time varchar(10),
    da_arrival_time varchar(10),
    actual_delievery_time varchar(10),
    primary key (rest_id, customer_id, da_id, pickup_time),
    Foreign key (rest_id) references F18_2_Restaurant(rest_id),
    Foreign key (customer_id) references F18_2_Customer(customer_id),
    Foreign key (da_id) references F18_2_Delievery_Agent(da_id));