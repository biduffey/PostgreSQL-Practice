----------------------------------
-- Subqueries emulating outer joins
-- The subquery approach to self-joining is likely slower than an explicity joins but may outperform in some circumstances/types of sql. Also, it can be easier to read if I only need it for 1 variable.
----------------------------------
-- How can you output a list of all members, including the individual who recommended them (if any), without using any joins? Ensure that there are no duplicates in the list, and that each firstname + surname pairing is formatted as a column and ordered.

select 	firstname || ' ' ||  surname as member
		, ( select firstname || ' ' ||  surname from cd.members recs where  mem.recommendedby = recs.memid)  as recommender
from cd.members mem
group by 1,2
order by 1

----------------------------------
-- CTE's
-- Common table expressions can help to simplify code when you need to reuse the same snippet repeatedly.
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


----------------------------------
-- ROLLUP() function
-- Putting a Rollup() in the group-by will union the aggregate total along with the group total, and eliniate the need to explicitly union
----------------------------------
-- Produce a list of the total number of slots booked per facility per month in the year of 2012. In this version, include output rows containing totals for all months per facility, and a total for all months for all facilities. The output table should consist of facility id, month and slots, sorted by the id and month. When calculating the aggregated values for all months and all facids, return null values in the month and facid columns.

select  f.facid
		, extract('month' from starttime) as month
    ,   sum(slots)  as slots
from cd.bookings b
  join cd.facilities f
  on b.facid=f.facid
	and extract('year' from starttime) = 2012
group by rollup(f.facid,month)
order by 1,2


----------------------------------
-- Min/Max
-- Min/Max are just shortcut windows functions where rank/row_number = 1
----------------------------------


-- The two queries below are equivalent:

-- a)
select m.surname
		, m.firstname
		, m.memid
		,min (starttime  ) as starttime
from cd.members m
join   cd.bookings b
on b.memid = m.memid
and date (starttime) >=  '2012-09-01'
group by 1,2,3
order by m.memid

-- b)
select m.surname
		, m.firstname
		, m.memid
		,starttime
from cd.members m
join (select *
	  	, row_number() over (partition by memid order by starttime ) as rank
	  from cd.bookings
  where date (starttime) >=  '2012-09-01' ) as b
on b.memid = m.memid

and   rank = 1
order by m.memid
