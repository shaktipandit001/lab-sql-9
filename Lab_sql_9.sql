use sakila;

##Create a table rentals_may to store the data from rental table with information for the month of May.
create table rental_may(
    rental_id int default null, 
    rental_date datetime default null,
    inventory_id int default null,
    customer_id int default null,
    return_date datetime default null,
    staff_id int default null
    );
select * from rental_may;

##Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
select * from rental_may;
	insert into rental_may (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id)
		select rental_id, rental_date, inventory_id, customer_id, return_date, staff_id 
			from rental where rental_date 
				like "2005-05%";
  
select * from rental_may;


##Create a table rentals_june to store the data from rental table with information for the month of June.
create table rental_June(
    rental_id int default null, 
    rental_date datetime default null,
    inventory_id int default null,
    customer_id int default null,
    return_date datetime default null,
    staff_id int default null
    );
select * from rental_june;

##Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
select * from rental_june;
insert into rental_june (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id)
select rental_id, rental_date, inventory_id, customer_id, return_date, staff_id 
from rental where rental_date like ('2005-06%');

select * from rental_june;

##Check the number of rentals for each customer for May.
select * from rental_may;
select count(rental_id) as rentals, customer_id from rental_may group by customer_id;

##Check the number of rentals for each customer for June.
select * from rental_june;
select count(rental_id) as rentals, customer_id from rental_june group by customer_id;

--Rest Done in Python 

##Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:
##Check the number of rentals for each customer for May
##Check the number of rentals for each customer for June
##Hint: You can store the results from the two queries in two separate dataframes.
##Write a function that checks if customer borrowed more or less films in the month of June as compared to May.
##Hint: For this part, you can create a join between the two dataframes created before, using the merge function available for pandas dataframes. Here is a link to the documentation for the merge function.