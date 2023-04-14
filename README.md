# New York City Motor Vehicles Collisions Data Integration & Analytics

<br>

<p align="center">
 <img src="./img/nypd.png" title="New York City Police Department" alt = "New York City Police Department" />
</p>

## Problem Definition

In this dataset sourced from NYC Open Data portal and NYPD website, we need to design and implement a data engineering solution that can integrate, transform, and load this data into a centralized data warehouse, enabling the data analysts and scientists to easily access and analyze it. The solution must be scalable, resilient, and secure, able to handle increasing data volumes and diverse data types while ensuring data integrity and compliance with data protection regulations. The ultimate goal of this data engineering solution is to enable our organization to make data-driven decisions, improve customer engagement, and drive business growth. Statistical information on motor vehicle collisions is made available for public users to access. The data is updated on a monthly basis, and grouped by borough intersections, bridges, and tunnels.

## Learning

This project has a strong emphasis on applied learning. I got to analyze the motor vehicle and traffic accidents happening in New York City, using information from the NYC Open Data portal and NYPD Public data to build a data engineering pipeline involving data extraction, data cleansing, transformation, exploratory analysis, data visualization, and data flow orchestration of event data on the cloud.

## Data Source

**New York City Traffic Data/Motor Vehicle Collisions** - The project leverages various data sources like Crashes, Vehicles and Persons from Open Data as desribed below. All the datasets and the information on the Motor Vehicle Collisions come from the same data source. 

- [Motor Vehicle Collisions - Crashes](https://data.cityofnewyork.us/Public-Safety/Motor-Vehicle-Collisions-Crashes/h9gi-nx95) - The Motor Vehicle Collisions crash dataset contains details on the crash event. Each row represents a crash event. The Motor Vehicle Collisions data contain information from all police reported motor vehicle collisions in NYC. The police report (MV104-AN) is required to be filled out for collisions where someone is injured or killed, or where there is at least $1000 worth of damage (https://www.nhtsa.gov/sites/nhtsa.dot.gov/files/documents/ny_overlay_mv-104an_rev05_2004.pdf). It should be noted that the data is preliminary and subject to change when the MV-104AN forms are amended based on revised crash details.

- [Motor Vehicle Collisions - Vehicles](https://data.cityofnewyork.us/Public-Safety/Motor-Vehicle-Collisions-Vehicles/bm4k-52h4) - The Motor Vehicle Collisions vehicle dataset contains details on each vehicle involved in the crash. Each row represents a motor vehicle involved in a crash. The data in this dataset goes back to April 2016 when crash reporting switched to an electronic system.

- [Motor Vehicle Collisions - Person](https://data.cityofnewyork.us/Public-Safety/Motor-Vehicle-Collisions-Person/f55k-p6yu) - The Motor Vehicle Collisions person dataset contains details for people involved in the crash. Each row represents a person (driver, occupant, pedestrian, bicyclist,..) involved in a crash. The data in this source goes back to April 2016 when crash reporting switched to an electronic system.

Under Eric L. Adams's comprehensive traffic safety initiative, Vision Zero, and in an effort to improve street safety in every neighborhood and reduce traffic-related injuries and deaths, the NYPD aggressively targets drivers who:

- Speed
- Operate mobile devices while driving
- Drive drunk
- Fail to yield to pedestrians
- Fail to stop at red lights and stop signs

This section contains statistical information on moving violation summonses, motor vehicle collisions, and instances of leaving the scene of an incident, as well as access to the Department's raw feed of traffic-related data which is used for the Traffic Safety Forum

## Data Description

This dataset consists of below metadata information:

|              Data Source             |   Rows   |   Columns   |  Update Frequency |   File Format  |
|:------------------------------------:|:--------:|:-----------:|:-----------------:|:--------------:|
|               Crashes                |   1.95M  |       29    |       Daily       |      csv       |
|               Vehicles               |   3.705M |       25    |       Daily       |      csv       |
|               Persons            	   |   4.90M  |       21    |       Daily       |      csv       |

## Tools 

Below tools have been utilized for the various segments involving Data Profiling, Modeling, Integration and BI Reporting and Visualizations:

<p align="center">  
    <br>
	<a href="#">
        <img height=100 src="img/erstudio.png" alt="ER/Studio" title="ER/Studio" hspace=80> 
  </a>	
 	<a href="#">
        <img height=100 src="img/alteryx.png" alt="Alteryx" title="Alteryx" hspace=80> 
  </a>
    <br>
</p>
<br>
<p align="center">  
    <br>
	<a href="#">
        <img height=100 src="img/mssqlserver-modified.png" alt="Microsoft SQL Server" title="Microsoft SQL Server" hspace=80> 
  </a>	
 	<a href="#">
        <img height=100 src="img/powerbi.png" alt="Power BI" title="Power BI" hspace=80> 
  </a>
  	<a href="#">
        <img height=100 src="img/tableau.png" alt="Tableau" title="Tableau" hspace=80> 
  </a>
    <br>
</p>
<br>
<p align="center">  
    <br>
 	<a href="#">
        <img height=100 src="img/tlnd.png" alt="Talend" title="Talend" hspace=80> 
  </a>
<br>
</p>
<br>
<p align="center">  
    <br>
 	<a href="#">
        <img height=100 src="img/bigquery.png" alt="BigQuery" title="BigQuery" hspace=80> 
  </a>
<br>
</p>

## Data Modeling

This project leverages the capability of ER/Studio Data Architect to design, visualize, and manage data models and metadata for the database. ER/Studio allowed to create conceptual, logical, and physical data models and map the relationships and dependencies between them. The methodology of data modeling has been an iterative process of design, review, feedback and enhancements adhering the business and end-user requirements.

<p align="center">  
  <br>
	<a href="#">
        <img src="img/stagemodel.jpg"> 
  </a>		
    <br>
	Figure 1 : New York City Motor Vehicles Collisions Stage Data Model
</p>
<br>

<p align="center">  
  <br>
	<a href="#">
        <img src="img/dim_model-1.jpg"> 
  </a>		
    <br>
	Figure 2 : New York City Motor Vehicles Collisions Dimensional Data Model
</p>
<br>
