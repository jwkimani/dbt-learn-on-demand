with US_STATES as (
    SELECT STATEID, STATENAME, STATEABBREV
    FROM RAW.LOOKUPS.STATELOOKUP
)

select * from US_STATES