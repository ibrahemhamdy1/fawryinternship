# MySQL dump command
$DATE = $(date +%Y-%m-%d_%H-%M-%S)
sudo mysqldump -u root laravel > "$(date +%Y-%m-%d_%H-%M-%S)-laravel.sql"

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup created successfully: laravel-$DATE.sql"
else
    echo "Backup failed"
fi