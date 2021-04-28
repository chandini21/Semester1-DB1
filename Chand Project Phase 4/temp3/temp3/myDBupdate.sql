insert into delievers (delievers_id, rest_id, customer_id, da_id, pickup_time, da_arrival_time, actial_delievery_time) values (98, 24, 36, 48, '13:23', '13:51', '1:29');
insert into delievers (delievers_id, rest_id, customer_id, da_id, pickup_time, da_arrival_time, actial_delievery_time) values (99, 18, 28, 22, '9:43', '20:25', '0:14');
insert into delievers (delievers_id, rest_id, customer_id, da_id, pickup_time, da_arrival_time, actial_delievery_time) values (100, 41, 5, 34, '6:07', '4:50', '0:07');

update customer set name='John Doe' where customer_id=1;
update customer set name = 'Delia' where customer_id = 7;
update customer set name = 'Jacinta' where customer_id = 76;
update customer set name = 'Trever' where customer_id = 84;
update customer set name = 'Feddelity' where customer_id = 37;
update customer set name = 'Horton' where customer_id = 2;
update customer set name = 'Solly' where customer_id = 28;
update customer set name = 'Timotheus' where customer_id = 46;
update customer set name = 'Brand' where customer_id = 23;
update customer set name = 'Florina' where customer_id = 36;
update customer set name = 'Dav' where customer_id = 96;

delete from delievers where DELIEVERS_ID = 77;
delete from delievers where DELIEVERS_ID = 74;