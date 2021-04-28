create table restaurant (
    rest_id number not null constraint restaurant_pk primary key,
    name varchar2(50) not null,
    locality varchar2(250),
    zip_code varchar2,2    city varchar2(50),
    base_delivery_charge number,
    commision_offered number
);

create table menu_item (
    item_id number not null constraint menu_item_pk primary key,
    item_name varchar2(50) not null,
    item_category varchar2(50),
    cuisine varchar2(50),
    dietary_preference varchar2(50),
    price number,
    r_id  number
);

create table customer (
    customer_id number not null constraint cusotmer_pk primary key,
    name varchar2(50) not null,
    phone_number varchar2(20),
    zip_code varchar2(20),
    city varchar2(50),
    locality varchar2(250)
);

create table delievery_agent (
    da_id number not null constraint delievery_agent_pk primary key,
    first_name varchar2(50) not null,
    last_name varchar2(50) not null,
    mobile_number varchar2(20),
    zip_code varchar2(20),
    dob date,
    work_location varchar2(50),
    shift_opted varchar(50)
);

create table works_for (
    works_for_id number not null constraint works_for_pk primary key,
    rest_id number(10) not null,
    agent_id number(10) not null
);

create table restaurant_times (
    restaurant_times_id number not null constraint restaurant_times_pk primary key,
    open_time varchar2(10),
    close_time varchar2(10),
    rest_id number(10) not null
);

create table orders (
    rest_id number not null constraint order_pk primary key,
    customer_id number(10),
    menu_id number(10),
    order_time varchar2(10),
    order_date date,
    payment_mode varchar2(50)
);

create table delievers (
    delievers_id number not null constraint delievers_pk primary key,
    rest_id number(10),
    customer_id number(10),
    da_id number(10),
    pickup_time varchar2(10),
    da_arrival_time varchar2(10),
    actial_delievery_time varchar2(10)
);