create table employees (
    id int
);
INSERT INTO employees VALUES (2),(4),(4),(6),(6),(7),(8),(8);

select max(id) as emp_id  
from employees  
where id not in (
    select id 
    from employees 
    group by id 
    having count(*) > 1
);
