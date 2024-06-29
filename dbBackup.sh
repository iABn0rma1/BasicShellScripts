#!/bin/bash
# Database Backup Script

username="enter username here"
password="enter password here"
database="database_name"
backup_dir="Shell"

mysqldump -u $username -p$password $database > $backup_dir/db_backup_$(date +%Y%m%d%H%M%S).sql
echo "Database backup created: db_backup_$(date +%Y%m%d%H%M%S).sql"
