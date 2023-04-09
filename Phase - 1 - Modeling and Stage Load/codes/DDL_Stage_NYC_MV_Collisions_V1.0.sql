-- nyc mv collisions Stage Tables
-- 2022-11-19
-- r sherman
-- SQL Server

/* Version Log */
	--  create database with root login in master
	-- 	vehicle_type_code1 -- changed to --> vehicle_type_code_1 || vehicle_type_code2 -- changed to --> vehicle_type_code_2

create database nyc_mv;

CREATE TABLE dbo.stg_nyc_mv_collisions_BigQuery
(
	COLLISION_ID bigint NOT NULL,   -- unique_key
	collision_dt datetime NULL,
	collision_day date NULL,
	collision_time time NULL,
	collision_hour int NULL,
	collision_dayoftheweek int NULL,
	borough varchar(40) NULL,
	zip_code varchar(40) NULL,
	off_street_name varchar(40) NULL,
	on_street_name varchar(40) NULL,
	cross_street_name varchar(40) NULL,
	latitude numeric(24,6) NULL,
	longitude numeric(24,6) NULL,
	location varchar(256) NULL,
	contributing_factor_vehicle_1 varchar(256) NULL,
	contributing_factor_vehicle_2 varchar(256) NULL,
	contributing_factor_vehicle_3 varchar(256) NULL,
	contributing_factor_vehicle_4 varchar(256) NULL,
	contributing_factor_vehicle_5 varchar(256) NULL,
	number_of_cyclist_injured int NULL,
	number_of_cyclist_killed int NULL,
	number_of_motorist_injured int NULL,
	number_of_motorist_killed int NULL,
	number_of_pedestrians_injured int NULL,
	number_of_pedestrians_killed int NULL,
	number_of_persons_injured int NULL,
	number_of_persons_killed int NULL,
	vehicle_type_code_1 varchar(80) NULL,
	vehicle_type_code_2 varchar(80) NULL,
	vehicle_type_code_3 varchar(80) NULL,
	vehicle_type_code_4 varchar(80) NULL,
	vehicle_type_code_5 varchar(80) NULL,
	
	DI_JobID varchar(20) NULL,
	DI_CreateDate datetime default getdate() NULL,
	
	PRIMARY KEY (COLLISION_ID)
);

-- DROP TABLE [dbo].[stg_nyc_mv_collision_vehicles];

CREATE TABLE dbo.stg_nyc_mv_collision_vehicles (
	UNIQUE_ID bigint NOT NULL,
	COLLISION_ID bigint NOT NULL,
	CRASH_DATE datetime NULL,
	CRASH_TIME time NULL,
	VEHICLE_ID varchar(80) NULL,
	STATE_REGISTRATION varchar(80) NULL,
	VEHICLE_TYPE varchar(80) NULL,
	VEHICLE_MAKE varchar(80) NULL,
	VEHICLE_MODEL varchar(80) NULL,
	VEHICLE_YEAR varchar(80) NULL,
	TRAVEL_DIRECTION varchar(255) NULL,
	VEHICLE_OCCUPANTS int NULL,
	DRIVER_SEX varchar(80) NULL,
	DRIVER_LICENSE_STATUS varchar(255) NULL,
	DRIVER_LICENSE_JURISDICTION varchar(255) NULL,
	PRE_CRASH varchar(255) NULL,
	POINT_OF_IMPACT varchar(255) NULL,
	VEHICLE_DAMAGE varchar(255) NULL,
	VEHICLE_DAMAGE_1 varchar(255) NULL,
	VEHICLE_DAMAGE_2 varchar(255) NULL,
	VEHICLE_DAMAGE_3 varchar(255) NULL,
	PUBLIC_PROPERTY_DAMAGE varchar(1024) NULL,
	PUBLIC_PROPERTY_DAMAGE_TYPE varchar(1024) NULL,
	CONTRIBUTING_FACTOR_1 varchar(255) NULL,
	CONTRIBUTING_FACTOR_2 varchar(255) NULL,
	
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT getdate() NOT NULL,
	PRIMARY KEY (UNIQUE_ID)
);


--DROP TABLE [dbo].[stg_nyc_mv_collision_persons];

CREATE TABLE dbo.stg_nyc_mv_collision_persons (
	UNIQUE_ID bigint NOT NULL,
	COLLISION_ID bigint NOT NULL,
	CRASH_DATE datetime NULL,
	CRASH_TIME time NULL,
	PERSON_ID varchar(80) NULL,
	PERSON_TYPE varchar(80) NULL,
	PERSON_INJURY varchar(80) NULL,
	VEHICLE_ID varchar(80) NULL,
	PERSON_AGE int NULL,
	EJECTION varchar(80) NULL,
	EMOTIONAL_STATUS varchar(80) NULL,
	BODILY_INJURY varchar(80) NULL,
	POSITION_IN_VEHICLE varchar(255) NULL,
	SAFETY_EQUIPMENT varchar(255) NULL,
	PED_LOCATION varchar(255) NULL,
	PED_ACTION varchar(255) NULL,
	COMPLAINT varchar(255) NULL,
	PED_ROLE varchar(255) NULL,
	CONTRIBUTING_FACTOR_1 varchar(255) NULL,
	CONTRIBUTING_FACTOR_2 varchar(255) NULL,
	PERSON_SEX varchar(10) NULL,
	
	DI_PID varchar(20) NULL,
	DI_Create_Date datetime DEFAULT getdate() NULL,
	
	PRIMARY KEY (UNIQUE_ID)
);
