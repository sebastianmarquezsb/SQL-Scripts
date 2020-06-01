SELECT
COUNT (*) * 8 / 1024 AS MB_EN_USO
FROM sys.dm_os_buffer_descriptors
GROUP BY database_id
HAVING DB_NAME (database_id) LIKE 'HIPOTEC'
ORDER BY COUNT (*) * 8 / 1024 DESC