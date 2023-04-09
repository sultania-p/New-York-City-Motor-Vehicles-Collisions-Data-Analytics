select
	c.*,
	v.*
from [dbo].[stg_nyc_mv_collisions_BigQuery] c
join [dbo].[stg_nyc_mv_collision_vehicles] v on c.COLLISION_ID = v.COLLISION_ID
where c.COLLISION_ID = 3541052


/* Unique fields */
select distinct [VEHICLE_ID] from [dbo].[stg_nyc_mv_collision_vehicles] 
select distinct [STATE_REGISTRATION] from [dbo].[stg_nyc_mv_collision_vehicles] -- 83
select distinct [vehicle_type_code_1] from [dbo].[stg_nyc_mv_collisions_BigQuery] -- 1015
select distinct [contributing_factor_vehicle_1] from [dbo].[stg_nyc_mv_collisions_BigQuery] -- 60
select distinct [PRE_CRASH] from [dbo].[stg_nyc_mv_collision_vehicles] --20
select distinct [POINT_OF_IMPACT] from [dbo].[stg_nyc_mv_collision_vehicles] --20
select distinct [PUBLIC_PROPERTY_DAMAGE_TYPE] from [dbo].[stg_nyc_mv_collision_vehicles] --20

select * from [dbo].[stg_nyc_mv_collision_vehicles] where collision_id=3541052
select * from [dbo].[stg_nyc_mv_collisions_BigQuery]  where collision_id=3541052
select * from [dbo].[stg_nyc_mv_collision_persons] where collision_id=3541052

select distinct [BODILY_INJURY] from  [dbo].[stg_nyc_mv_collision_persons] --20
select distinct [PERSON_TYPE] from  [dbo].[stg_nyc_mv_collision_persons] --20

select distinct [TRAVEL_DIRECTION] from [dbo].[stg_nyc_mv_collision_vehicles] --16 // need cleaning, diff values for same dir


