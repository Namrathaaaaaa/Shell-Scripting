#!/bin/bash 

<< readme 
This is a script 
for Backup for 5 Day Rotation

Usage:
./backup.sh <path to your source> <path to backup folder>
readme


function display_usage(){
        echo "Usage: ./backup.sh <path to your source> <path to backup folder>"

}
if [[ $# -eq 0 ]];
then
        display_usage
fi

source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir=$2

function create_backup(){
        zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" > /dev/null
        if [ $? -eq 0 ]; then
                echo "backup generated successfully for ${timestamp}"
        fi

}

perform_rotation() {
    backups=($(ls -t "${backup_dir}"/backup_*.zip 2>/dev/null))

    if [[ ${#backups[@]} -gt 5 ]]; then
        echo "🔄 Performing rotation (keeping last 5 backups)..."
        
        # Get backups after the 5 most recent
        backups_to_remove=("${backups[@]:5}")

        for backup in "${backups_to_remove[@]}"; do
            rm -f "$backup"
            echo "🗑️ Deleted old backup: $backup"
        done
    fi
}



create_backup
perform_rotation