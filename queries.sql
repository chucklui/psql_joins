-- write your queries here
select * from vehicles
right outer join owners
on owners.id = vehicles.owner_id
order by vehicles.owner_id

