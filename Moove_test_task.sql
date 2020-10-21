
Create table personal_info
(
email character varying(20) CONSTRAINT PK PRIMARY KEY ,
first_name character varying(20),
last_name character varying(20),
position character varying(20)
);

Create table dep_info
(
department character varying(20) ,
room numeric,
email character varying(20) CONSTRAINT PK PRIMARY KEY 
); 

Create table phone_numbers
(
email character varying(20),
phone character varying(20) CONSTRAINT PK PRIMARY KEY 
);

select first_name, last_name 
from personal_info as ps right join (Select email 
from dep_info
where room=5424) as dep
ON ps.email=dep.email

