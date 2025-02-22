
#!/bin/bash

SOURCE_DIR="/home/ec2-user/app-logs"

Files_to_delete=$(find $SOURCE_DIR -name "*.log" -mtime +14)

echo "Files to delete: $Files_to_delete"
while read -r file
do 
   echo "deleting file: $file"
done <<< $Files_to_delete