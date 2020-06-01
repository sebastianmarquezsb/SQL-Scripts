sp_helpdb VISIONPLUS_NET
USE VISIONPLUS_NET;
GO
-- Truncate the log by changing the database recovery model to SIMPLE.
ALTER DATABASE VISIONPLUS_NET
SET RECOVERY SIMPLE;
GO
-- Shrink the truncated log file to 1 MB.
DBCC SHRINKFILE (VISIONPLUS_MV_log, 1);
GO
-- Reset the database recovery model.
ALTER DATABASE VISIONPLUS_NET
SET RECOVERY FULL;
GO