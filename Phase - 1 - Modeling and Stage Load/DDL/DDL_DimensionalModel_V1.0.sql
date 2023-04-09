/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      NewYorkCity_MotorVehoclesCollisions_DimensionalDataModel_V1.0.DM1
 *
 * Date Created : Tuesday, November 22, 2022 22:45:09
 * Target DBMS : Microsoft SQL Server 2019
 */

CREATE TYPE Name FROM nvarchar(50) NULL
go

/* 
 * TABLE: Dim_Collision_Contributing_Factor_Type 
 */

CREATE TABLE Dim_Collision_Contributing_Factor_Type(
    Collision_Contributing_Factor_Type_SK    int             IDENTITY(1,1),
    Contributing_Factor_Type                 varchar(256)    NULL,
    DI_JobID                                 varchar(20)     NULL,
    DI_CreateDate                            datetime        NOT NULL,
    CONSTRAINT PK_Dim_Collision_Contributing_Factor_Type PRIMARY KEY CLUSTERED (Collision_Contributing_Factor_Type_SK)
)

go


IF OBJECT_ID('Dim_Collision_Contributing_Factor_Type') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Collision_Contributing_Factor_Type >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Collision_Contributing_Factor_Type >>>'
go

/* 
 * TABLE: Dim_Complaint 
 */

CREATE TABLE Dim_Complaint(
    Complaint_SK     int             IDENTITY(1,1),
    COMPLAINT        varchar(255)    NULL,
    DI_JobID         varchar(20)     NULL,
    DI_CreateDate    datetime        NOT NULL,
    CONSTRAINT PK_Dim_Complaint PRIMARY KEY CLUSTERED (Complaint_SK)
)

go


IF OBJECT_ID('Dim_Complaint') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Complaint >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Complaint >>>'
go

/* 
 * TABLE: Dim_Direction 
 */

CREATE TABLE Dim_Direction(
    Direction_SK        int             IDENTITY(1,1),
    TRAVEL_DIRECTION    varchar(255)    NULL,
    DI_JobID            varchar(20)     NULL,
    DI_CreateDate       datetime        NOT NULL,
    CONSTRAINT PK_Dim_Direction PRIMARY KEY CLUSTERED (Direction_SK)
)

go


IF OBJECT_ID('Dim_Direction') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Direction >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Direction >>>'
go

/* 
 * TABLE: Dim_Ejection_Type 
 */

CREATE TABLE Dim_Ejection_Type(
    Ejection_Type_SK    int            IDENTITY(1,1),
    EJECTION            varchar(80)    NULL,
    DI_JobID            varchar(20)    NULL,
    DI_CreateDate       datetime       NOT NULL,
    CONSTRAINT PK_Dim_Ejection_Type PRIMARY KEY CLUSTERED (Ejection_Type_SK)
)

go


IF OBJECT_ID('Dim_Ejection_Type') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Ejection_Type >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Ejection_Type >>>'
go

/* 
 * TABLE: Dim_Emotion_Status 
 */

CREATE TABLE Dim_Emotion_Status(
    Emotion_Status_SK    int            IDENTITY(1,1),
    EMOTIONAL_STATUS     varchar(80)    NULL,
    DI_JobID             varchar(20)    NULL,
    DI_CreateDate        datetime       NOT NULL,
    CONSTRAINT PK_Dim_Emotion_Status PRIMARY KEY CLUSTERED (Emotion_Status_SK)
)

go


IF OBJECT_ID('Dim_Emotion_Status') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Emotion_Status >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Emotion_Status >>>'
go

/* 
 * TABLE: Dim_Geo 
 */

CREATE TABLE Dim_Geo(
    Geo_SK               int               IDENTITY(1,1),
    borough              varchar(40)       NOT NULL,
    zip_code             varchar(40)       NOT NULL,
    off_street_name      varchar(40)       NULL,
    on_street_name       varchar(40)       NULL,
    cross_street_name    varchar(40)       NULL,
    latitude             numeric(24, 6)    NULL,
    longitude            numeric(24, 6)    NULL,
    DI_JobID             varchar(20)       NULL,
    DI_CreateDate        datetime          NOT NULL,
    CONSTRAINT PK_Dim_Geo PRIMARY KEY CLUSTERED (Geo_SK)
)

go


IF OBJECT_ID('Dim_Geo') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Geo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Geo >>>'
go

/* 
 * TABLE: Dim_Injured_Body_Area 
 */

CREATE TABLE Dim_Injured_Body_Area(
    Injured_Body_Area_SK    int            IDENTITY(1,1),
    BODILY_INJURY           varchar(80)    NULL,
    DI_JobID                varchar(20)    NULL,
    DI_CreateDate           datetime       NOT NULL,
    CONSTRAINT PK_Dim_Injured_Body_Area PRIMARY KEY CLUSTERED (Injured_Body_Area_SK)
)

go


IF OBJECT_ID('Dim_Injured_Body_Area') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Injured_Body_Area >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Injured_Body_Area >>>'
go

/* 
 * TABLE: Dim_Injury_Type 
 */

CREATE TABLE Dim_Injury_Type(
    Injury_Type_SK    int            IDENTITY(1,1),
    INJURY_TYPE       varchar(80)    NULL,
    DI_JobID          varchar(20)    NULL,
    DI_CreateDate     datetime       NOT NULL,
    CONSTRAINT PK_Dim_Injury_Type PRIMARY KEY CLUSTERED (Injury_Type_SK)
)

go


IF OBJECT_ID('Dim_Injury_Type') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Injury_Type >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Injury_Type >>>'
go

/* 
 * TABLE: Dim_Pedestrian_Action 
 */

CREATE TABLE Dim_Pedestrian_Action(
    Pedestrian_Action_SK    int             IDENTITY(1,1),
    PED_ACTION              varchar(255)    NULL,
    DI_JobID                varchar(20)     NULL,
    DI_CreateDate           datetime        NOT NULL,
    CONSTRAINT PK_Dim_Pedestrian_Action PRIMARY KEY CLUSTERED (Pedestrian_Action_SK)
)

go


IF OBJECT_ID('Dim_Pedestrian_Action') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Pedestrian_Action >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Pedestrian_Action >>>'
go

/* 
 * TABLE: Dim_Pedestrian_Location 
 */

CREATE TABLE Dim_Pedestrian_Location(
    Pedestrian_Location_SK    int             IDENTITY(1,1),
    PED_LOCATION              varchar(255)    NULL,
    DI_JobID                  varchar(20)     NULL,
    DI_CreateDate             datetime        NOT NULL,
    CONSTRAINT PK_Dim_Pedestrian_Location PRIMARY KEY CLUSTERED (Pedestrian_Location_SK)
)

go


IF OBJECT_ID('Dim_Pedestrian_Location') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Pedestrian_Location >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Pedestrian_Location >>>'
go

/* 
 * TABLE: Dim_Person_Type 
 */

CREATE TABLE Dim_Person_Type(
    Person_Type_SK    int            IDENTITY(1,1),
    PERSON_TYPE       varchar(80)    NULL,
    DI_JobID          varchar(20)    NULL,
    DI_CreateDate     datetime       NOT NULL,
    CONSTRAINT PK_Dim_Person_Type PRIMARY KEY CLUSTERED (Person_Type_SK)
)

go


IF OBJECT_ID('Dim_Person_Type') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Person_Type >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Person_Type >>>'
go

/* 
 * TABLE: Dim_Pre_Crash_Action_Type 
 */

CREATE TABLE Dim_Pre_Crash_Action_Type(
    Pre_Crash_Action_Type_SK    int             IDENTITY(1,1),
    PRE_CRASH                   varchar(255)    NULL,
    DI_JobID                    varchar(20)     NULL,
    DI_CreateDate               datetime        NOT NULL,
    CONSTRAINT PK_Dim_Pre_Crash_Action_Type PRIMARY KEY CLUSTERED (Pre_Crash_Action_Type_SK)
)

go


IF OBJECT_ID('Dim_Pre_Crash_Action_Type') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Pre_Crash_Action_Type >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Pre_Crash_Action_Type >>>'
go

/* 
 * TABLE: Dim_Property_Damage_Type 
 */

CREATE TABLE Dim_Property_Damage_Type(
    Property_Damage_Type_SK        int              IDENTITY(1,1),
    PUBLIC_PROPERTY_DAMAGE_TYPE    varchar(1024)    NULL,
    DI_JobID                       varchar(20)      NULL,
    DI_CreateDate                  datetime         NOT NULL,
    CONSTRAINT PK_Dim_Property_Damage_Type PRIMARY KEY CLUSTERED (Property_Damage_Type_SK)
)

go


IF OBJECT_ID('Dim_Property_Damage_Type') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Property_Damage_Type >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Property_Damage_Type >>>'
go

/* 
 * TABLE: Dim_Role 
 */

CREATE TABLE Dim_Role(
    Role_SK          int             IDENTITY(1,1),
    PED_ROLE         varchar(255)    NULL,
    DI_JobID         varchar(20)     NULL,
    DI_CreateDate    datetime        NOT NULL,
    CONSTRAINT PK_Dim_Role PRIMARY KEY CLUSTERED (Role_SK)
)

go


IF OBJECT_ID('Dim_Role') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Role >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Role >>>'
go

/* 
 * TABLE: Dim_Safety_Equipment 
 */

CREATE TABLE Dim_Safety_Equipment(
    Safety_Equipment_SK    int             IDENTITY(1,1),
    SAFETY_EQUIPMENT       varchar(255)    NULL,
    DI_JobID               varchar(20)     NULL,
    DI_CreateDate          datetime        NOT NULL,
    CONSTRAINT PK_Dim_Safety_Equipment PRIMARY KEY CLUSTERED (Safety_Equipment_SK)
)

go


IF OBJECT_ID('Dim_Safety_Equipment') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Safety_Equipment >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Safety_Equipment >>>'
go

/* 
 * TABLE: Dim_Seating_Position 
 */

CREATE TABLE Dim_Seating_Position(
    Seating_Position_SK    int            IDENTITY(1,1),
    POSITION_IN_VEHICLE    varchar(80)    NULL,
    DI_JobID               varchar(20)    NULL,
    DI_CreateDate          datetime       NOT NULL,
    CONSTRAINT PK_Dim_Seating_Position PRIMARY KEY CLUSTERED (Seating_Position_SK)
)

go


IF OBJECT_ID('Dim_Seating_Position') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Seating_Position >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Seating_Position >>>'
go

/* 
 * TABLE: Dim_Vehicle 
 */

CREATE TABLE Dim_Vehicle(
    Vehicle_SK            int            IDENTITY(1,1),
    STATE_REGISTRATION    varchar(80)    NOT NULL,
    VEHICLE_TYPE          varchar(80)    NULL,
    VEHICLE_MAKE          varchar(80)    NULL,
    VEHICLE_MODEL         varchar(80)    NULL,
    VEHICLE_YEAR          varchar(80)    NULL,
    DI_JobID              varchar(20)    NULL,
    DI_CreateDate         datetime       NOT NULL,
    CONSTRAINT PK_Dim_Vehicle PRIMARY KEY CLUSTERED (Vehicle_SK)
)

go


IF OBJECT_ID('Dim_Vehicle') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Vehicle >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Vehicle >>>'
go

/* 
 * TABLE: FCT_Collision 
 */

CREATE TABLE FCT_Collision(
    Collision_ID                     bigint         NOT NULL,
    collision_dt                     datetime       NULL,
    collision_day                    date           NULL,
    collision_time                   time(7)        NULL,
    collision_hour                   int            NULL,
    collision_dayoftheweek           int            NULL,
    number_of_cyclist_injured        int            NULL,
    number_of_cyclist_killed         int            NULL,
    number_of_motorist_injured       int            NULL,
    number_of_motorist_killed        int            NULL,
    number_of_pedestrians_injured    int            NULL,
    number_of_pedestrians_killed     int            NULL,
    number_of_persons_injured        int            NULL,
    number_of_persons_killed         int            NULL,
    vehicle_type_code_1              varchar(80)    NULL,
    vehicle_type_code_2              varchar(80)    NULL,
    vehicle_type_code_3              varchar(80)    NULL,
    vehicle_type_code_4              varchar(80)    NULL,
    vehicle_type_code_5              varchar(80)    NULL,
    Geo_SK                           int            NULL,
    DI_JobID                         varchar(20)    NULL,
    DI_CreateDate                    datetime       NOT NULL,
    CONSTRAINT PK_FCT_Collision PRIMARY KEY CLUSTERED (Collision_ID)
)

go


IF OBJECT_ID('FCT_Collision') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_Collision >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_Collision >>>'
go

/* 
 * TABLE: FCT_Collision_Vehicle 
 */

CREATE TABLE FCT_Collision_Vehicle(
    Collision_Vehicle_ID                     bigint           NOT NULL,
    COLLISION_ID                             bigint           NULL,
    VEHICLE_ID                               varchar(80)      NULL,
    VEHICLE_OCCUPANTS                        int              NULL,
    DRIVER_SEX                               varchar(80)      NULL,
    DRIVER_LICENSE_STATUS                    varchar(255)     NULL,
    DRIVER_LICENSE_JURISDICTION              varchar(255)     NULL,
    POINT_OF_IMPACT                          varchar(255)     NULL,
    VEHICLE_DAMAGE                           varchar(255)     NULL,
    VEHICLE_DAMAGE_1                         varchar(255)     NULL,
    VEHICLE_DAMAGE_2                         varchar(255)     NULL,
    VEHICLE_DAMAGE_3                         varchar(255)     NULL,
    PUBLIC_PROPERTY_DAMAGE                   varchar(1024)    NULL,
    Collision_Contributing_Factor_Type_SK    int              NULL,
    Vehicle_SK                               int              NULL,
    Direction_SK                             int              NULL,
    Pre_Crash_Action_Type_SK                 int              NULL,
    Property_Damage_Type_SK                  int              NULL,
    Collision_ID                             bigint           NULL,
    DI_JobID                                 varchar(20)      NULL,
    DI_CreateDate                            datetime         NOT NULL,
    CONSTRAINT PK_FCT_Collision_Vehicle PRIMARY KEY CLUSTERED (Collision_Vehicle_ID)
)

go


IF OBJECT_ID('FCT_Collision_Vehicle') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_Collision_Vehicle >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_Collision_Vehicle >>>'
go

/* 
 * TABLE: FCT_Victim 
 */

CREATE TABLE FCT_Victim(
    Victim_ID                 bigint         NOT NULL,
    COLLISION_ID              bigint         NULL,
    PERSON_ID                 varchar(80)    NULL,
    VEHICLE_ID                varchar(80)    NULL,
    PERSON_AGE                int            NULL,
    PERSON_SEX                varchar(10)    NULL,
    Person_Type_SK            int            NULL,
    Injury_Type_SK            int            NULL,
    Ejection_Type_SK          int            NULL,
    Emotion_Status_SK         int            NULL,
    Injured_Body_Area_SK      int            NULL,
    Seating_Position_SK       int            NULL,
    Safety_Equipment_SK       int            NULL,
    Pedestrian_Location_SK    int            NULL,
    Pedestrian_Action_SK      int            NULL,
    Complaint_SK              int            NULL,
    Role_SK                   int            NULL,
    Collision_Vehicle_ID      bigint         NULL,
    DI_JobID                  varchar(20)    NULL,
    DI_CreateDate             datetime       NOT NULL,
    CONSTRAINT PK_FCT_Victim PRIMARY KEY CLUSTERED (Victim_ID)
)

go


IF OBJECT_ID('FCT_Victim') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_Victim >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_Victim >>>'
go

/* 
 * INDEX: Ref11 
 */

CREATE INDEX Ref11 ON FCT_Collision(Geo_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Collision') AND name='Ref11')
    PRINT '<<< CREATED INDEX FCT_Collision.Ref11 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Collision.Ref11 >>>'
go

/* 
 * INDEX: Ref22 
 */

CREATE INDEX Ref22 ON FCT_Collision_Vehicle(Collision_Contributing_Factor_Type_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Collision_Vehicle') AND name='Ref22')
    PRINT '<<< CREATED INDEX FCT_Collision_Vehicle.Ref22 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Collision_Vehicle.Ref22 >>>'
go

/* 
 * INDEX: Ref33 
 */

CREATE INDEX Ref33 ON FCT_Collision_Vehicle(Vehicle_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Collision_Vehicle') AND name='Ref33')
    PRINT '<<< CREATED INDEX FCT_Collision_Vehicle.Ref33 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Collision_Vehicle.Ref33 >>>'
go

/* 
 * INDEX: Ref44 
 */

CREATE INDEX Ref44 ON FCT_Collision_Vehicle(Direction_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Collision_Vehicle') AND name='Ref44')
    PRINT '<<< CREATED INDEX FCT_Collision_Vehicle.Ref44 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Collision_Vehicle.Ref44 >>>'
go

/* 
 * INDEX: Ref55 
 */

CREATE INDEX Ref55 ON FCT_Collision_Vehicle(Pre_Crash_Action_Type_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Collision_Vehicle') AND name='Ref55')
    PRINT '<<< CREATED INDEX FCT_Collision_Vehicle.Ref55 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Collision_Vehicle.Ref55 >>>'
go

/* 
 * INDEX: Ref66 
 */

CREATE INDEX Ref66 ON FCT_Collision_Vehicle(Property_Damage_Type_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Collision_Vehicle') AND name='Ref66')
    PRINT '<<< CREATED INDEX FCT_Collision_Vehicle.Ref66 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Collision_Vehicle.Ref66 >>>'
go

/* 
 * INDEX: Ref1818 
 */

CREATE INDEX Ref1818 ON FCT_Collision_Vehicle(Collision_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Collision_Vehicle') AND name='Ref1818')
    PRINT '<<< CREATED INDEX FCT_Collision_Vehicle.Ref1818 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Collision_Vehicle.Ref1818 >>>'
go

/* 
 * INDEX: Ref77 
 */

CREATE INDEX Ref77 ON FCT_Victim(Person_Type_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Victim') AND name='Ref77')
    PRINT '<<< CREATED INDEX FCT_Victim.Ref77 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Victim.Ref77 >>>'
go

/* 
 * INDEX: Ref88 
 */

CREATE INDEX Ref88 ON FCT_Victim(Injury_Type_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Victim') AND name='Ref88')
    PRINT '<<< CREATED INDEX FCT_Victim.Ref88 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Victim.Ref88 >>>'
go

/* 
 * INDEX: Ref99 
 */

CREATE INDEX Ref99 ON FCT_Victim(Ejection_Type_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Victim') AND name='Ref99')
    PRINT '<<< CREATED INDEX FCT_Victim.Ref99 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Victim.Ref99 >>>'
go

/* 
 * INDEX: Ref1010 
 */

CREATE INDEX Ref1010 ON FCT_Victim(Emotion_Status_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Victim') AND name='Ref1010')
    PRINT '<<< CREATED INDEX FCT_Victim.Ref1010 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Victim.Ref1010 >>>'
go

/* 
 * INDEX: Ref1111 
 */

CREATE INDEX Ref1111 ON FCT_Victim(Injured_Body_Area_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Victim') AND name='Ref1111')
    PRINT '<<< CREATED INDEX FCT_Victim.Ref1111 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Victim.Ref1111 >>>'
go

/* 
 * INDEX: Ref1212 
 */

CREATE INDEX Ref1212 ON FCT_Victim(Seating_Position_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Victim') AND name='Ref1212')
    PRINT '<<< CREATED INDEX FCT_Victim.Ref1212 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Victim.Ref1212 >>>'
go

/* 
 * INDEX: Ref1313 
 */

CREATE INDEX Ref1313 ON FCT_Victim(Safety_Equipment_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Victim') AND name='Ref1313')
    PRINT '<<< CREATED INDEX FCT_Victim.Ref1313 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Victim.Ref1313 >>>'
go

/* 
 * INDEX: Ref1414 
 */

CREATE INDEX Ref1414 ON FCT_Victim(Pedestrian_Location_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Victim') AND name='Ref1414')
    PRINT '<<< CREATED INDEX FCT_Victim.Ref1414 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Victim.Ref1414 >>>'
go

/* 
 * INDEX: Ref1515 
 */

CREATE INDEX Ref1515 ON FCT_Victim(Pedestrian_Action_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Victim') AND name='Ref1515')
    PRINT '<<< CREATED INDEX FCT_Victim.Ref1515 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Victim.Ref1515 >>>'
go

/* 
 * INDEX: Ref1616 
 */

CREATE INDEX Ref1616 ON FCT_Victim(Complaint_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Victim') AND name='Ref1616')
    PRINT '<<< CREATED INDEX FCT_Victim.Ref1616 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Victim.Ref1616 >>>'
go

/* 
 * INDEX: Ref1717 
 */

CREATE INDEX Ref1717 ON FCT_Victim(Role_SK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Victim') AND name='Ref1717')
    PRINT '<<< CREATED INDEX FCT_Victim.Ref1717 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Victim.Ref1717 >>>'
go

/* 
 * INDEX: Ref2019 
 */

CREATE INDEX Ref2019 ON FCT_Victim(Collision_Vehicle_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Victim') AND name='Ref2019')
    PRINT '<<< CREATED INDEX FCT_Victim.Ref2019 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Victim.Ref2019 >>>'
go

/* 
 * TABLE: FCT_Collision 
 */

ALTER TABLE FCT_Collision ADD CONSTRAINT RefDim_Geo1 
    FOREIGN KEY (Geo_SK)
    REFERENCES Dim_Geo(Geo_SK)
go


/* 
 * TABLE: FCT_Collision_Vehicle 
 */

ALTER TABLE FCT_Collision_Vehicle ADD CONSTRAINT RefDim_Collision_Contributing_Factor_Type2 
    FOREIGN KEY (Collision_Contributing_Factor_Type_SK)
    REFERENCES Dim_Collision_Contributing_Factor_Type(Collision_Contributing_Factor_Type_SK)
go

ALTER TABLE FCT_Collision_Vehicle ADD CONSTRAINT RefDim_Vehicle3 
    FOREIGN KEY (Vehicle_SK)
    REFERENCES Dim_Vehicle(Vehicle_SK)
go

ALTER TABLE FCT_Collision_Vehicle ADD CONSTRAINT RefDim_Direction4 
    FOREIGN KEY (Direction_SK)
    REFERENCES Dim_Direction(Direction_SK)
go

ALTER TABLE FCT_Collision_Vehicle ADD CONSTRAINT RefDim_Pre_Crash_Action_Type5 
    FOREIGN KEY (Pre_Crash_Action_Type_SK)
    REFERENCES Dim_Pre_Crash_Action_Type(Pre_Crash_Action_Type_SK)
go

ALTER TABLE FCT_Collision_Vehicle ADD CONSTRAINT RefDim_Property_Damage_Type6 
    FOREIGN KEY (Property_Damage_Type_SK)
    REFERENCES Dim_Property_Damage_Type(Property_Damage_Type_SK)
go

ALTER TABLE FCT_Collision_Vehicle ADD CONSTRAINT RefFCT_Collision18 
    FOREIGN KEY (Collision_ID)
    REFERENCES FCT_Collision(Collision_ID)
go


/* 
 * TABLE: FCT_Victim 
 */

ALTER TABLE FCT_Victim ADD CONSTRAINT RefDim_Person_Type7 
    FOREIGN KEY (Person_Type_SK)
    REFERENCES Dim_Person_Type(Person_Type_SK)
go

ALTER TABLE FCT_Victim ADD CONSTRAINT RefDim_Injury_Type8 
    FOREIGN KEY (Injury_Type_SK)
    REFERENCES Dim_Injury_Type(Injury_Type_SK)
go

ALTER TABLE FCT_Victim ADD CONSTRAINT RefDim_Ejection_Type9 
    FOREIGN KEY (Ejection_Type_SK)
    REFERENCES Dim_Ejection_Type(Ejection_Type_SK)
go

ALTER TABLE FCT_Victim ADD CONSTRAINT RefDim_Emotion_Status10 
    FOREIGN KEY (Emotion_Status_SK)
    REFERENCES Dim_Emotion_Status(Emotion_Status_SK)
go

ALTER TABLE FCT_Victim ADD CONSTRAINT RefDim_Injured_Body_Area11 
    FOREIGN KEY (Injured_Body_Area_SK)
    REFERENCES Dim_Injured_Body_Area(Injured_Body_Area_SK)
go

ALTER TABLE FCT_Victim ADD CONSTRAINT RefDim_Seating_Position12 
    FOREIGN KEY (Seating_Position_SK)
    REFERENCES Dim_Seating_Position(Seating_Position_SK)
go

ALTER TABLE FCT_Victim ADD CONSTRAINT RefDim_Safety_Equipment13 
    FOREIGN KEY (Safety_Equipment_SK)
    REFERENCES Dim_Safety_Equipment(Safety_Equipment_SK)
go

ALTER TABLE FCT_Victim ADD CONSTRAINT RefDim_Pedestrian_Location14 
    FOREIGN KEY (Pedestrian_Location_SK)
    REFERENCES Dim_Pedestrian_Location(Pedestrian_Location_SK)
go

ALTER TABLE FCT_Victim ADD CONSTRAINT RefDim_Pedestrian_Action15 
    FOREIGN KEY (Pedestrian_Action_SK)
    REFERENCES Dim_Pedestrian_Action(Pedestrian_Action_SK)
go

ALTER TABLE FCT_Victim ADD CONSTRAINT RefDim_Complaint16 
    FOREIGN KEY (Complaint_SK)
    REFERENCES Dim_Complaint(Complaint_SK)
go

ALTER TABLE FCT_Victim ADD CONSTRAINT RefDim_Role17 
    FOREIGN KEY (Role_SK)
    REFERENCES Dim_Role(Role_SK)
go

ALTER TABLE FCT_Victim ADD CONSTRAINT RefFCT_Collision_Vehicle19 
    FOREIGN KEY (Collision_Vehicle_ID)
    REFERENCES FCT_Collision_Vehicle(Collision_Vehicle_ID)
go


