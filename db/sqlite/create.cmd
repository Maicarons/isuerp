@echo off

sqlite3 global_db.db < global_db.sql
sqlite3 oms_db.db < oms_db.sql
sqlite3 wms_db.db < wms_db.sql

echo Databases created successfully.