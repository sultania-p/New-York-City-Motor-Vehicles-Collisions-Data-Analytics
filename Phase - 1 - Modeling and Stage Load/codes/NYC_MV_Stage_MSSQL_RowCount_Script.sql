/* NYC Motor Vehicles Collisions Stage Row Count Validation */
select 'stg_nyc_mv_collision_vehicles' as TableName, count(*) as [RowCount] from [dbo].[stg_nyc_mv_collision_vehicles]
UNION
select 'stg_nyc_mv_collision_persons' as TableName, count(*) as [RowCount] from [dbo].[stg_nyc_mv_collision_persons]
UNION
select 'stg_nyc_mv_collisions_BigQuery' as TableName, count(*) as [RowCount] from [dbo].[stg_nyc_mv_collisions_BigQuery]



/* Data Validation */
select * from [dbo].[stg_nyc_mv_collision_vehicles]
select * from [dbo].[stg_nyc_mv_collision_persons]
select * from [dbo].[stg_nyc_mv_collisions_BigQuery] where COLLISION_ID in (3168114, 345907,3541052)