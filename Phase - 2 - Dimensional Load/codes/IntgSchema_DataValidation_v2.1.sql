select * from [dbo].[stg_nyc_mv_collision_persons] where person_id = '18' order by crash_date desc
select person_id from [dbo].[stg_nyc_mv_collision_persons] group by person_id having count(1) > 1

select distinct [VEHICLE_ID],[VEHICLE_TYPE],[VEHICLE_MAKE],[VEHICLE_MODEL],[VEHICLE_YEAR]
from [dbo].[stg_nyc_mv_collision_vehicles] -- 2175718

select * from [dbo].[stg_nyc_mv_collision_vehicles] where collision_id=3541052

select * from [dbo].[stg_nyc_mv_collision_vehicles] where vehicle_id = '939559'
select * from [dbo].[stg_nyc_mv_collision_persons] where collision_id='3541052' vehicle_id = '939559'

select  [VEHICLE_ID], -- 2175578
[STATE_REGISTRATION], max(crash_date)
from [dbo].[stg_nyc_mv_collision_vehicles]
group by [VEHICLE_ID],[STATE_REGISTRATION]
having vehicle_id ='c43588d3-fecd-4d35-8956-5ae9823439f5'
order by 3 desc

select [DRIVER_SEX],[DRIVER_LICENSE_STATUS],[DRIVER_LICENSE_JURISDICTION] from 
[dbo].[stg_nyc_mv_collision_vehicles]
group by [DRIVER_SEX],[DRIVER_LICENSE_STATUS],[DRIVER_LICENSE_JURISDICTION]

select distinct [VEHICLE_DAMAGE]from [dbo].[stg_nyc_mv_collision_vehicles]
union
select distinct [VEHICLE_DAMAGE_1] from [dbo].[stg_nyc_mv_collision_vehicles]
union
select distinct [VEHICLE_DAMAGE_2] from [dbo].[stg_nyc_mv_collision_vehicles]
union
select distinct [VEHICLE_DAMAGE_3] from [dbo].[stg_nyc_mv_collision_vehicles]

select distinct [PUBLIC_PROPERTY_DAMAGE] from [dbo].[stg_nyc_mv_collision_vehicles] --4
select distinct [PUBLIC_PROPERTY_DAMAGE_TYPE] from [dbo].[stg_nyc_mv_collision_vehicles] --14597
select distinct [PRE_CRASH] from  [dbo].[stg_nyc_mv_collision_vehicles] -- 20

select distinct [CONTRIBUTING_FACTOR_1] from [dbo].[stg_nyc_mv_collision_vehicles]
UNION
select distinct [CONTRIBUTING_FACTOR_2] from [dbo].[stg_nyc_mv_collision_vehicles]
UNION
select distinct [contributing_factor_vehicle_1]  from [dbo].[stg_nyc_mv_collisions_BigQuery]
UNION
select distinct [contributing_factor_vehicle_2]  from [dbo].[stg_nyc_mv_collisions_BigQuery]
UNION
select distinct [contributing_factor_vehicle_3]  from [dbo].[stg_nyc_mv_collisions_BigQuery]
UNION
select distinct [contributing_factor_vehicle_4]  from [dbo].[stg_nyc_mv_collisions_BigQuery]
UNION
select distinct [contributing_factor_vehicle_5]  from [dbo].[stg_nyc_mv_collisions_BigQuery]

declare @string as varchar(100);
set  @string = 'David Zola';
select  @string, substring(@string, 1, CHARINDEX(' ', @string, 1)-1);

--
select distinct [PERSON_TYPE] from [dbo].[stg_nyc_mv_collision_persons] --4
select distinct [PERSON_INJURY] from [dbo].[stg_nyc_mv_collision_persons]
select distinct [EJECTION] from [dbo].[stg_nyc_mv_collision_persons]
select distinct [EMOTIONAL_STATUS] from [dbo].[stg_nyc_mv_collision_persons]
select distinct [BODILY_INJURY] from [dbo].[stg_nyc_mv_collision_persons]
select distinct [POSITION_IN_VEHICLE] from [dbo].[stg_nyc_mv_collision_persons]
select distinct [SAFETY_EQUIPMENT] from [dbo].[stg_nyc_mv_collision_persons]
select distinct [PED_LOCATION] from [dbo].[stg_nyc_mv_collision_persons]
select distinct [PED_ACTION] from [dbo].[stg_nyc_mv_collision_persons]
select distinct [COMPLAINT] from [dbo].[stg_nyc_mv_collision_persons]
select distinct [PED_ROLE] from [dbo].[stg_nyc_mv_collision_persons]

select * from [dbo].[stg_nyc_mv_collisions_BigQuery]
select distinct [vehicle_type_code_1] from [dbo].[stg_nyc_mv_collisions_BigQuery] order by 1
select distinct [vehicle_type_code_2] from [dbo].[stg_nyc_mv_collisions_BigQuery]




