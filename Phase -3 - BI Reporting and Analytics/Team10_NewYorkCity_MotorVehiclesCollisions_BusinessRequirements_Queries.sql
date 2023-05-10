/*********************
New York City Motor Vehicles Collisions - Phase 3 / Business Requirements Data Analysis 
**********************/

/* Metrics: */

-- Number of Collisions
select count([collision_sk]) as 'Number of Collisions'
from [dbo].[fct_collision_crashes] fc;

-- Number of people injured or died
select 
	sum([number_of_persons_injured]) as 'Total Number of People Injured'
	,sum([number_of_persons_killed])  as 'Total Number of People Killed'
from [dbo].[fct_collision_crashes] fcc;

-- Or we can also use below query !! Both give same results!!!
select 
	dp.[PERSON_INJURY] as 'Injury Type'
	,count([UNIQUE_ID]) as 'Total Number of People Injured/Killed'
from [dbo].[fct_collision_persons] fp
join [dbo].[Dim_PERSON_INJURY] dp on fp.[PERSON_INJURY_SK] = dp.PERSON_INJURY_SK
where dp.PERSON_INJURY in ('Injured', 'Killed')
group by dp.[PERSON_INJURY];


-- Number of people by role, such as pedestrian, injured or died
select 
	dr.PED_ROLE as 'Role Type'
	,dp.[PERSON_INJURY] as 'Injury Type'
	,count([UNIQUE_ID]) as 'Total Number of People Injured/Killed'
from [dbo].[fct_collision_persons] fp
join [dbo].[Dim_PERSON_INJURY] dp on fp.[PERSON_INJURY_SK] = dp.PERSON_INJURY_SK
join [dbo].[Dim_PED_ROLE] dr on fp.[PED_ROLE_SK] = dr.[PED_ROLE_SK]
where dp.PERSON_INJURY in ('Injured', 'Killed') and dr.PED_ROLE <> 'No Value'
	--and dr.PED_ROLE in ('Driver','Passenger','Pedestrian','Witness')
group by dp.[PERSON_INJURY], dr.PED_ROLE;

-- Number of vehicles involved
select 
	count([UNIQUE_ID]) as 'Total Number of Vehicles Involved',
	count(distinct [VEHICLE_ID]) as 'Total Number of Distinct Vehicles Involved'
from [dbo].[fct_Collisions_Vehicles];

/* Dimensions: */

-- Collisions Trend by (granularity month, year)
select
	YEAR([collision_day]) as 'Year'
	,DATENAME(MONTH, [collision_day]) as 'Month'
	,count([collision_sk]) as 'Total Number of Collisions'
from [dbo].[fct_collision_crashes] fc
group by DATENAME(MONTH, [collision_day]), YEAR([collision_day])
order by 1 desc;

-- Collisions Trend by Seasonality, i.e., Spring, Summer, Fall and Winter
select
	[Year]
	,[Seasonality]
	,count([collision_sk]) as 'Total Number of Collisions'
from (
	select
		[collision_sk]
		,YEAR([collision_dt]) as 'Year'
		,Case When MONTH([collision_day]) in (3,4,5) then 'Spring'
			When MONTH([collision_day]) in (6,7,8) then 'Summer'
			When MONTH([collision_day]) in (9,10,11) then 'Fall'
			When MONTH([collision_day]) in (12,1,2) then 'Winter'
			END as 'Seasonality'
	from [dbo].[fct_collision_crashes] fc
) sq group by sq.[Year], sq.Seasonality
order by 1 desc;

-- Collisions Trend by (Time of Day)
select
	[Time of Day]
	,count([collision_sk]) as 'Total Number of Collisions'
from (
	select
		[collision_sk]
		,Case When [collision_hour] >=0 and [collision_hour] <6 Then 'Late Night (12AM-6AM)'
			When [collision_hour] >=6 and [collision_hour]<9 Then 'Morning Commute (6AM-9AM)'	
			When [collision_hour] >=9 and [collision_hour]<12 Then 'Late Morning Commute (9AM-12PM)'	
			When [collision_hour] >=12 and [collision_hour]<15 Then 'Afternoon Commute (12PM-3PM)'
			When [collision_hour] >=15 and [collision_hour]<18 Then 'Late Afternoon Commute (3PM-6PM)'
			When [collision_hour] >=18 and [collision_hour]<21 Then 'Evening Commute (6PM-9PM)'
			When [collision_hour] >=21 and [collision_hour]<24 Then 'Night Commute (9PM-12AM)'
			END as 'Time of Day'
	from [dbo].[fct_collision_crashes] fc
) sq group by sq.[Time of Day]
order by 2 desc;

-- Collisions Trend by Vehicle Types
select Top 10
	UPPER(dv.[VEHICLE_TYPE]) as 'Vehicle Type'
	,count([UNIQUE_ID]) as 'Total Number of Collisions'
from [dbo].[fct_Collisions_Vehicles] fv
join [dbo].[Dim_VEHICLE_TYPE] dv on dv.VEHICLE_TYPE_SK = fv.[VEHICLE_TYPE_SK]
where dv.[VEHICLE_TYPE] NOT IN ('No Value', 'UNKNOWN')
group by dv.[VEHICLE_TYPE]
order by 2 desc;

-- Collisions by Causes
select TOP 10
		dc.[CONTRIBUTING_FACTOR] as 'Collision Cause'
		,count([TABLE_SK]) as 'Total Number of Collisions (Cause Wise)'
from [dbo].[fct_collision_persons_contributing_factors] fcp
join [dbo].[Dim_CONTRIBUTING_FACTOR] dc on fcp.[CONTRIBUTING_FACTOR_SK] = dc.CONTRIBUTING_FACTOR_SK
where dc.[CONTRIBUTING_FACTOR] NOT IN ('Unspecified')
group by dc.[CONTRIBUTING_FACTOR]
order by 2 desc;

-- Collisions by Victim Type
select
	dp.[PERSON_TYPE] as 'Victim Type'
	,count([collision_sk]) as 'Total Collisions'
from [dbo].[fct_collision_crashes] fc
join [dbo].[fct_collision_persons] fcp on fc.[collision_id] = fcp.[COLLISION_ID]
join [dbo].[Dim_PersonType] dp on fcp.[PERSON_TYPE_SK] = dp.PERSON_TYPE_SK
group by dp.[PERSON_TYPE]
order by 2 desc;

-- Fatality Analysis by Victim Type
select
	fc.[borough] as 'Borough'
	,SUM([number_of_pedestrians_killed]) as 'Total Pedestrians Killed'
	,SUM([number_of_cyclist_killed]) as 'Total Cyclists Killed'
	,SUM([number_of_motorist_killed]) as 'Total Motorists Killed'
from [dbo].[fct_collision_crashes] fc
where  fc.[borough] is not NULL
group by  fc.[borough];

-- How Many Car Accidents Are There in NYC Every Year?
select 
	dvt.VEHICLE_TYPE as 'Vehicle Type'
	,count([UNIQUE_ID]) as 'Total Vehicles Involved'
from [dbo].[fct_Collisions_Vehicles] fv
join [dbo].[Dim_VEHICLE_TYPE] dvt on fv.[VEHICLE_TYPE_SK] = dvt.[VEHICLE_TYPE_SK]
where dvt.VEHICLE_TYPE like 'car%' or dvt.VEHICLE_TYPE = 'Sedan'
group by dvt.VEHICLE_TYPE
order by 2 desc;

-- Which Boroughs in New York City Have the Most Accidents over Year?
select
	YEAR([collision_day]) as 'Collision Year'
	,[borough] as 'Borough'
	,count(distinct [collision_id]) as 'Total Accidents'
from [dbo].[fct_collision_crashes] fc
where [borough] <> 'No Value'
group by fc.[borough],YEAR([collision_day])
order by 3 desc;

-- Which NYC Borough Has the Most Fatal Car Accidents?
select 
	[borough] as 'Borough'
	,SUM([number_of_persons_killed]) as 'Total Fatalities/Persons Killed'
from [dbo].[fct_collision_crashes] fc
where fc.[borough] is not NULL
group by fc.[borough]
order by 2 desc;

-- How Common Are Bicycle Accidents in NYC?
Select 
	 dp.PERSON_TYPE as 'Victim Type'
	 ,YEAR([collision_dt]) as 'Collision Year'
	,DATENAME(month,[collision_dt]) as 'Colliison Month'
	,count(fc.[collision_id]) as 'Number of Bicyclists'
from [dbo].[fct_collision_crashes] fc
join [dbo].[fct_collision_persons] fp on fc.[collision_id] = fp.[collision_id] 
join [dbo].[Dim_PersonType] dp on fp.[PERSON_TYPE_SK] = dp.PERSON_TYPE_SK
where dp.PERSON_TYPE = 'Bicyclist' 
group by dp.PERSON_TYPE, YEAR([collision_dt]), DATENAME(month,[collision_dt])
order by 2 desc;

-- How Often Are Pedestrians Involving New York Traffic Accidents?
Select 
	 dp.PERSON_TYPE as 'Victim Type'
	 ,YEAR([collision_dt]) as 'Collision Year'
	,DATENAME(month,[collision_dt]) as 'Colliison Month'
	,count(fc.[collision_id]) as 'Number of Bicyclists'
from [dbo].[fct_collision_crashes] fc
join [dbo].[fct_collision_persons] fp on fc.[collision_id] = fp.[collision_id] 
join [dbo].[Dim_PersonType] dp on fp.[PERSON_TYPE_SK] = dp.PERSON_TYPE_SK
where dp.PERSON_TYPE = 'Pedestrian' 
group by dp.PERSON_TYPE, YEAR([collision_dt]), DATENAME(month,[collision_dt])
order by 2 desc;

-- How Many Motorcyclists are Injured or Killed in NYC Accidents?'
select 
	sum([number_of_motorist_injured]) as 'Number of Motorcyclists Injured'
	,sum([number_of_motorist_killed]) as 'Number of Motorcyclists Killed'
from [dbo].[fct_collision_crashes] fc

-- Total Collisions by Driver License Status
Select 
	 dl.DRIVER_LICENSE_STATUS,
	 count([COLLISION_ID]) as 'Total Collisions'
from [dbo].[fct_Collisions_Vehicles] fv
join [dbo].[Dim_DRIVER_LICENSE_STATUS] dl on fv.[DRIVER_LICENSE_STATUS_SK] = dl.DRIVER_LICENSE_STATUS_SK
where dl.DRIVER_LICENSE_STATUS <> 'No Value'
group by dl.DRIVER_LICENSE_STATUS;