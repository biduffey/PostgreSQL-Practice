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


select  facid
      , extract('month' from starttime )
      , sum(slots)
from cd.bookings
where --extract('month' from starttime ) = 9 and
 extract('year' from starttime ) = 2012
group by  facid
          , extract('month' from starttime )
order by  1
        , extract('month' from starttime )
