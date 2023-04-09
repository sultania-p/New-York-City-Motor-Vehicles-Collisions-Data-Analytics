select * from dbo.ProductCostHistorySCD where ProductID=784
select * from dbo.ProductPriceHistorySCD where ProductID=784

-- Integration
select distinct [borough] from [dbo].[stg_nyc_mv_collisions_BigQuery]
select distinct [BODILY_INJURY] from dbo.stg_nyc_mv_collision_persons
select distinct [COMPLAINT] from dbo.stg_nyc_mv_collision_persons

select distinct [CONTRIBUTING_FACTOR_1] from [dbo].[stg_nyc_mv_collision_persons] order by 1--> 53 excl NULL
select distinct [CONTRIBUTING_FACTOR_2] from [dbo].[stg_nyc_mv_collision_persons]   order by 1--> 50 excl NULL

select distinct [CONTRIBUTING_FACTOR_2] from [dbo].[stg_nyc_mv_collision_persons]
where [CONTRIBUTING_FACTOR_2] not in (
select distinct [CONTRIBUTING_FACTOR_1] from [dbo].[stg_nyc_mv_collision_persons] )
select distinct [CONTRIBUTING_FACTOR_1] from [dbo].[stg_nyc_mv_collision_vehicles] order by 1 
select distinct [CONTRIBUTING_FACTOR_2] from [dbo].[stg_nyc_mv_collision_vehicles] order by 1 



select distinct DRIVER_LICENSE_JURISDICTION from stg_nyc_mv_collision_vehicles order by 1
select distinct DRIVER_LICENSE_STATUS from stg_nyc_mv_collision_vehicles 
select distinct EJECTION from [dbo].[stg_nyc_mv_collision_persons]
select distinct VEHICLE_MODEL from stg_nyc_mv_collision_vehicles order by 1
select distinct VEHICLE_TYPE from stg_nyc_mv_collision_vehicles order by 1
select distinct VEHICLE_MAKE from stg_nyc_mv_collision_vehicles order by 1
select distinct PUBLIC_PROPERTY_DAMAGE_TYPE from stg_nyc_mv_collision_vehicles
select distinct PUBLIC_PROPERTY_DAMAGE from stg_nyc_mv_collision_vehicles
select distinct [VEHICLE_DAMAGE] from stg_nyc_mv_collision_vehicles order by 1
select distinct [VEHICLE_DAMAGE_1] from stg_nyc_mv_collision_vehicles order by 1
select distinct [VEHICLE_DAMAGE_2] from stg_nyc_mv_collision_vehicles order by 1
select distinct [VEHICLE_DAMAGE_3] from stg_nyc_mv_collision_vehicles order by 1
select distinct [PED_LOCATION] from [dbo].[stg_nyc_mv_collision_persons]

select distinct [vehicle_type_code_1] from [dbo].[stg_nyc_mv_collisions_BigQuery] order by 1

select * from [dbo].[stg_nyc_mv_collision_persons] where unique_id = 10922
select * from [dbo].[stg_nyc_mv_collision_persons] where unique_id = 5821564
select * from [dbo].[fct_collision_persons] where unique_id = 5821564
select * from [dbo].[stg_nyc_mv_collision_vehicles] where unique_id IN ( 17519803, 17519804)

select * from [dbo].[fct_Collisions_Vehicles] where unique_id IN ( 17519803, 17519804)
select count(*) from [dbo].[stg_nyc_mv_collisions_BigQuery] group by [COLLISION_ID] having count(1) > 1
select top 10 * from [dbo].[stg_nyc_mv_collisions_BigQuery] where COLLISION_ID= 2110

select count(*) from [dbo].[fct_collision_crashes] a 
left join [dbo].[fct_Collisions_Vehicles] c on a.[COLLISION_ID] = c.[COLLISION_ID]
left join [dbo].[stg_nyc_mv_collision_vehicles] b on a.[collision_id] = b.[COLLISION_ID] and c.[VEHICLE_ID] = b.[VEHICLE_ID]
where [VEHICLE_ID] is not null

select count(*)
from [dbo].[fct_Collisions_Vehicles] a
inner join  [dbo].[stg_nyc_mv_collision_vehicles] c on a.[VEHICLE_ID] = c.VEHICLE_ID
left join [dbo].[fct_collision_crashes] b on a.[COLLISION_ID] = b.[COLLISION_ID]

select count(*) from (
	select [collision_sk],[VEHICLE_ID]  from [dbo].[fct_collision_crashes] a 
	inner join [dbo].[stg_nyc_mv_collision_vehicles] b on a.[collision_id] = b.[COLLISION_ID]
	where b.[VEHICLE_ID] is not null
	) sq group by  [collision_sk],[VEHICLE_ID] having count(*) > 1

select count(*) from (
	select [collision_sk],[VEHICLE_ID]
	from [dbo].[fct_collision_crashes] a
	left join [dbo].[stg_nyc_mv_collision_vehicles] b on a.[COLLISION_ID] = b.[COLLISION_ID]
	left join [dbo].[Dim_vehicle_type_code] tc on tc.[vehicle_type_code] = b.VEHICLE_TYPE
	left join [dbo].[Dim_CONTRIBUTING_FACTOR] cf1 on cf1.CONTRIBUTING_FACTOR = b.CONTRIBUTING_FACTOR_1
	left join [dbo].[Dim_CONTRIBUTING_FACTOR] cf2 on cf2.CONTRIBUTING_FACTOR = b.CONTRIBUTING_FACTOR_2
	where b.[VEHICLE_ID] is not null
) sq group by  [collision_sk],[VEHICLE_ID] having count(*) > 1



select count(*) from 
join [dbo].[fct_collision_crashes] b on a.[COLLISION_ID] = b.[COLLISION_ID]

select * from [dbo].[stg_nyc_mv_collision_vehicles] where COLLISION_ID = 322699;
select count(*) from [dbo].[fct_Collisions_Vehicles_Contributing_Factors] where collision_id = 322699;

select * from [dbo].[stg_nyc_mv_collision_persons] where collision_id = 3909222
select * from [dbo].[fct_collision_persons_contributing_factors] where collision_id = 3909222

select * from [dbo].[stg_nyc_mv_collision_vehicles] where unique_id = 20116691

[dbo].[fct_Collisions_Vehicles_Vehicle_Damage]
select * from [dbo].[fct_Collisions_Vechicles_Contributing_Factors_Tnx]
select * from [dbo].[fct_Collisions_Vehicles_Vehicle_Damage_Tnx] where unique_id=16680319
select * from [dbo].[stg_nyc_mv_collision_vehicles] where unique_id = 16680319

select * from [dbo].[fct_Collisions_Vehicles_Vehicle_Damage]

-----
select * from [dbo].[stg_nyc_mv_collision_vehicles] where COLLISION_ID= 3594532;
select * from [dbo].[Dim_VEHICLE_DAMAGE] ;

select distinct [CONTRIBUTING_FACTOR_1] from [dbo].[stg_nyc_mv_collision_persons] order by 1--> 53 excl NULL
select distinct [CONTRIBUTING_FACTOR_2] from [dbo].[stg_nyc_mv_collision_persons]   order by 1--> 50 excl NULL

select distinct [SAFETY_EQUIPMENT] from [dbo].[stg_nyc_mv_collision_persons]

select distinct [TRAVEL_DIRECTION] from  [dbo].[stg_nyc_mv_collision_vehicles]

select  [vehicle_type_code_1] from [dbo].[stg_nyc_mv_collisions_BigQuery] union
select  [vehicle_type_code_2] from [dbo].[stg_nyc_mv_collisions_BigQuery] union
select  [vehicle_type_code_3] from [dbo].[stg_nyc_mv_collisions_BigQuery] union
select  [vehicle_type_code_4] from [dbo].[stg_nyc_mv_collisions_BigQuery] union
select  [vehicle_type_code_5] from [dbo].[stg_nyc_mv_collisions_BigQuery]
order by 1

select * from [dbo].[Dim_PERSON_INJURY]
select * from [dbo].[Dim_PED_ROLE]

select distinct collision_hour from  [dbo].[fct_collision_crashes] fc order by 1
select * from [dbo].[Dim_PersonType]

select distinct [VEHICLE_TYPE] from [dbo].[Dim_VEHICLE_TYPE]
where upper(vehicle_type) like '%CAR %' or upper(vehicle_type) like '%SUV%'
select * from [dbo].[Dim_PersonType]
select count(*) from [dbo].[fct_collision_persons_contributing_factors]