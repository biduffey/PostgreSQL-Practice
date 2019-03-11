-- Produce a count of the number of recommendations each member has made. Order by member ID.
select recommendedby, count(*) from cd.members m where m.recommendedby is not null group by 1
order by recommendedby

----------------------------------
-- Produce a list of the total number of slots booked per facility. For now, just produce an output table consisting of facility id and slots, sorted by facility id.

select facid, sum(slots) from cd.bookings group by facid order by facid


----------------------------------
-- Produce a list of the total number of slots booked per facility in the month of September 2012. Produce an output table consisting of facility id and slots, sorted by the number of slots.

select facid, sum(slots)
from cd.bookings
where extract('month' from starttime ) = 9
and extract('year' from starttime ) = 2012
group by facid
order by  2


----------------------------------
-- Produce a list of the total number of slots booked per facility per month in the year of 2012. Produce an output table consisting of facility id and slots, sorted by the id and month.

select facid,extract('month' from starttime ), sum(slots)
from cd.bookings
where --extract('month' from starttime ) = 9 and
 extract('year' from starttime ) = 2012
group by facid ,extract('month' from starttime )
order by  1 ,extract('month' from starttime )

----------------------------------
-- Find the total number of members who have made at least one booking.
select count(distinct memid) from cd.bookings


----------------------------------
-- Produce a list of facilities with more than 1000 slots booked. Produce an output table consisting of facility id and hours, sorted by facility id.
select facid
		, sum(slots)
from cd.bookings
group by facid
having sum(slots) > 1000
order by facid


----------------------------------
-- Output the facility id that has the highest number of slots booked without using a LIMIT clause. This version will probably look messy!

with total_slots as (
select f.facid
    , sum(slots) as slots
from cd.bookings b
  join cd.facilities f
  on b.facid=f.facid
group by f.facid )

select facid,  slots from total_slots where slots = (select max(slots) from total_slots)
---------------------------
