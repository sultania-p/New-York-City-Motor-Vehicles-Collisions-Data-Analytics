/* NYC Motor Vehicles Collisions Integration Schema Row Count Validation */

select 'dim_arrest_borough' as TableName, count(*) as [RowCount] from [dbo].[dim_arrest_borough]
UNION
select 'Dim_BODILY_INJURY' as TableName, count(*) as [RowCount] from [dbo].[Dim_BODILY_INJURY]
UNION
select 'Dim_COMPLAINT' as TableName, count(*) as [RowCount] from [dbo].[Dim_COMPLAINT]
UNION
select 'Dim_CONTRIBUTING_FACTOR' as TableName, count(*) as [RowCount] from [dbo].[Dim_CONTRIBUTING_FACTOR]
UNION
select 'Dim_DRIVER_LICENSE_JURISDICTION' as TableName, count(*) as [RowCount] from [dbo].[Dim_DRIVER_LICENSE_JURISDICTION]
UNION
select 'Dim_DRIVER_LICENSE_STATUS' as TableName, count(*) as [RowCount] from [dbo].[Dim_DRIVER_LICENSE_STATUS]
UNION
select 'Dim_EJECTION' as TableName, count(*) as [RowCount] from [dbo].[Dim_EJECTION]
UNION
select 'Dim_VEHICLE_MODEL' as TableName, count(*) as [RowCount] from [dbo].[Dim_VEHICLE_MODEL]
UNION
select 'Dim_PERSON_SEX' as TableName, count(*) as [RowCount] from [dbo].[Dim_PERSON_SEX]
UNION
select 'Dim_POSITION_IN_VEHICLE' as TableName, count(*) as [RowCount] from [dbo].[Dim_POSITION_IN_VEHICLE]
UNION
select 'Dim_PRE_CRASH' as TableName, count(*) as [RowCount] from [dbo].[Dim_PRE_CRASH]
UNION
select 'Dim_SAFETY_EQUIPMENT' as TableName, count(*) as [RowCount] from [dbo].[Dim_SAFETY_EQUIPMENT]
UNION
select 'Dim_STATE_REGISTRATION' as TableName, count(*) as [RowCount] from [dbo].[Dim_STATE_REGISTRATION]
UNION
select 'Dim_TRAVEL_DIRECTION' as TableName, count(*) as [RowCount] from [dbo].[Dim_TRAVEL_DIRECTION]
UNION
select 'Dim_VEHICLE_MAKE' as TableName, count(*) as [RowCount] from [dbo].[Dim_VEHICLE_MAKE]
UNION
select 'Dim_EMOTIONAL_STATUS' as TableName, count(*) as [RowCount] from [dbo].[Dim_EMOTIONAL_STATUS]
UNION
select 'Dim_PED_ACTION' as TableName, count(*) as [RowCount] from [dbo].[Dim_PED_ACTION]
UNION
select 'Dim_PED_LOCATION' as TableName, count(*) as [RowCount] from [dbo].[Dim_PED_LOCATION]
UNION
select 'Dim_PED_ROLE' as TableName, count(*) as [RowCount] from [dbo].[Dim_PED_ROLE]
UNION
select 'Dim_PERSON_INJURY' as TableName, count(*) as [RowCount] from [dbo].[Dim_PERSON_INJURY]
UNION
select 'Dim_PersonType' as TableName, count(*) as [RowCount] from [dbo].[Dim_PersonType]
UNION
select 'Dim_POINT_OF_IMPACT' as TableName, count(*) as [RowCount] from [dbo].[Dim_POINT_OF_IMPACT]
UNION
select 'Dim_PUBLIC_PROPERTY_DAMAGE' as TableName, count(*) as [RowCount] from [dbo].[Dim_PUBLIC_PROPERTY_DAMAGE]
UNION
select 'Dim_VEHICLE_DAMAGE' as TableName, count(*) as [RowCount] from [dbo].[Dim_VEHICLE_DAMAGE]
UNION
select 'Dim_VEHICLE_TYPE' as TableName, count(*) as [RowCount] from [dbo].[Dim_VEHICLE_TYPE]
UNION
select 'Dim_vehicle_type_code' as TableName, count(*) as [RowCount] from [dbo].[Dim_vehicle_type_code]
UNION
select 'ERR_Model_Year' as TableName, count(*) as [RowCount] from [dbo].[ERR_Model_Year]
UNION
select 'ERR_Person_Age' as TableName, count(*) as [RowCount] from [dbo].[ERR_Person_Age]
UNION
select 'fct_collision_persons' as TableName, count(*) as [RowCount] from [dbo].[fct_collision_persons]
UNION
select 'fct_Collisions_Vehicles' as TableName, count(*) as [RowCount] from [dbo].[fct_Collisions_Vehicles]
UNION
select 'fct_collision_crashes' as TableName, count(*) as [RowCount] from [dbo].[fct_collision_crashes]
UNION
select 'fct_collision_persons_contributing_factors' as TableName, count(*) as [RowCount] from [dbo].[fct_collision_persons_contributing_factors]
UNION
select 'fct_Collisions_Vehicles_Contributing_Factors' as TableName, count(*) as [RowCount] from  [dbo].[fct_Collisions_Vehicles_Contributing_Factors]
UNION
select 'fct_Collisions_Vehicles_Vehicle_Damage' as TableName, count(*) as [RowCount] from  [dbo].[fct_Collisions_Vehicles_Vehicle_Damage]
UNION
select 'fct_collision_crashes_vehicles' as TableName, count(*) as [RowCount] from [dbo].[fct_collision_crashes_vehicles]
UNION
/* NYC Motor Vehicles Collisions Staging Schmea Row Count Validation */
select 'stg_nyc_mv_collision_vehicles' as TableName, count(*) as [RowCount] from [dbo].[stg_nyc_mv_collision_vehicles]
UNION
select 'stg_nyc_mv_collision_persons' as TableName, count(*) as [RowCount] from [dbo].[stg_nyc_mv_collision_persons]
UNION
select 'stg_nyc_mv_collisions_BigQuery' as TableName, count(*) as [RowCount] from [dbo].[stg_nyc_mv_collisions_BigQuery]

order by 1

/* Post Load Validation */
select * from [dbo].[dim_arrest_borough];
select * from [dbo].[Dim_BODILY_INJURY];
select * from [dbo].[Dim_COMPLAINT];
select * from [dbo].[Dim_CONTRIBUTING_FACTOR]
select * from [dbo].[Dim_DRIVER_LICENSE_JURISDICTION]
select * from [dbo].[Dim_DRIVER_LICENSE_STATUS]
select * from [dbo].[Dim_EJECTION]
select * from [dbo].[Dim_VEHICLE_MODEL]
select * from [dbo].[Dim_PERSON_SEX]
select * from [dbo].[Dim_POSITION_IN_VEHICLE]
select * from [dbo].[Dim_PRE_CRASH]
select * from [dbo].[Dim_SAFETY_EQUIPMENT]
select * from [dbo].[Dim_STATE_REGISTRATION]
select * from [dbo].[Dim_TRAVEL_DIRECTION]
select * from [dbo].[Dim_VEHICLE_MAKE]
select * from [dbo].[Dim_EMOTIONAL_STATUS]
select * from [dbo].[Dim_PED_ACTION]
select * from [dbo].[Dim_PED_LOCATION]
select * from [dbo].[Dim_PED_ROLE]
select * from [dbo].[Dim_PERSON_INJURY]
select * from [dbo].[Dim_PersonType]
select * from [dbo].[Dim_POINT_OF_IMPACT]
select * from [dbo].[Dim_PUBLIC_PROPERTY_DAMAGE]
select * from [dbo].[Dim_VEHICLE_DAMAGE]
select * from [dbo].[Dim_VEHICLE_TYPE]
select * from [dbo].[Dim_vehicle_type_code] 

select * from [dbo].[fct_collision_persons]
select * from [dbo].[fct_Collisions_Vehicles]
select * from [dbo].[fct_collision_crashes]
select * from [dbo].[fct_collision_persons_contributing_factors]
select * from [dbo].[fct_Collisions_Vehicles_Contributing_Factors]
select * from [dbo].[fct_Collisions_Vehicles_Vehicle_Damage] -- Test /// where collision_id = 3594532,3592279,3592185
select * from [dbo].[fct_collision_crashes_vehicles]
select * from [dbo].[ERR_Model_Year]
select * from [dbo].[ERR_Person_Age]

/* Post Load Validation Sample */
select 
	[UNIQUE_ID],[COLLISION_ID],[PERSON_ID],[PERSON_ID],[FACTOR_NUMBER],
	fct.[CONTRIBUTING_FACTOR_SK], 
	cf.CONTRIBUTING_FACTOR
from [dbo].[fct_collision_persons_contributing_factors] fct
join [dbo].[Dim_CONTRIBUTING_FACTOR] cf on fct.[CONTRIBUTING_FACTOR_SK] = cf.[CONTRIBUTING_FACTOR_SK]
where collision_id = 3909222

select * from [dbo].[Dim_CONTRIBUTING_FACTOR] where [CONTRIBUTING_FACTOR_SK] in (7,13)
