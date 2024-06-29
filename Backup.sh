#!/bin/bash
# Backup Script with Rotation

echo "Enter directory path: "
read backup_dir
max_backups=5

echo "Backing up files to $backup_dir..."
tar -czf $backup_dir/backup_$(date +%Y%m%d%H%M%S).tar.gz /path/to/source/files

# Delete old backups if more than max_backups
backup_count=$(ls -1 $backup_dir/*.tar.gz | wc -l)
if [ $backup_count -gt $max_backups ]; then
    oldest_backup=$(ls -1t $backup_dir/*.tar.gz | tail -1)
    rm $oldest_backup
    echo "Oldest backup deleted: $oldest_backup"
fi
