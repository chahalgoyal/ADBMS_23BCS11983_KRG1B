create table a (
	empid int primary key,
	ename varchar(23),
	salary int
	);

create table b (
	empid int primary key,
	ename varchar(23),
	salary int
	);

insert into a (empid, ename, salary) values
(1, 'aa', 1000),
(2, 'bb', 300);

insert into b (empid, ename, salary) values
(2, 'bb', 400),
(3, 'cc', 100);

select empid, ename, min(salary)
from
(
select * from a
union all
select * from b

) as intermediate_result 
group by empid, ename