sp_msforeachdb 'use ?;select name,''?'' from sys.procedures where object_definition(object_id) like ''%cursor%'''
