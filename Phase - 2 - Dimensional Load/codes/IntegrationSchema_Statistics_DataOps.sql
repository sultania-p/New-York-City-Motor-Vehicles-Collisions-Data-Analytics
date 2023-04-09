select * from [dbo].[cntl_JobStats] where system_pid= 15332; --2612
/************************************
-- Latest Execution TIme - 23 mins
************************************/
SELECT	job_name,	root_name,	convert(numeric(15,2),(job_duration /1000.00)/60.00) as "Dur(minutes)", --   job_duration,	job_start_time,	job_finish_time,	job_status FROM  cntl_JobStatswhere root_name = 'F1_load_orchestrator_STG_DIM_FCT'-- and job_start_time >= '2022-12-02 19:03'order by job_finish_time desc

SELECT db_name() as dbName,
        s.name AS SchemaName,
        t.NAME AS TableName,
        format(p.[Rows],'n0') as Table_Rows,
		current_timestamp as 'QueryTime'
    FROM    sys.tables t
    INNER JOIN  sys.indexes i ON t.OBJECT_ID = i.object_id
    INNER JOIN  sys.partitions p ON i.object_id = p.OBJECT_ID AND i.index_id = p.index_id
    INNER JOIN sys.schemas s on s.schema_id = t.schema_id
    WHERE
        t.NAME NOT LIKE 'dt%' AND
        i.OBJECT_ID > 255 AND
        i.index_id <= 1 AND
		 t.Name not like '%_Tnx'
    GROUP BY
             t.NAME, i.object_id
		   , i.index_id
		   , i.name
		    ,s.name
		    , p.[Rows]
    ORDER BY   s.name
	         , t.name