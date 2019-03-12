----------------------------------
-- How can you output a list of all members, including the individual who recommended them (if any), without using any joins? Ensure that there are no duplicates in the list, and that each firstname + surname pairing is formatted as a column and ordered.
-- Subqueries reaching out
select 	firstname || ' ' ||  surname as member
		, ( select firstname || ' ' ||  surname from cd.members recs where  mem.recommendedby = recs.memid)  as recommender
from cd.members mem
group by 1,2
order by 1

----------------------------------
-- Output the facility id that has the highest number of slots booked without using a LIMIT clause. This version will probably look messy!

-- CTE's
with total_slots as (
select f.facid
    , sum(slots) as slots
from cd.bookings b
  join cd.facilities f
  on b.facid=f.facid
group by f.facid )

select facid,  slots from total_slots where slots = (select max(slots) from total_slots)
