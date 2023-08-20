#for this one needs to update the path in the sh file everytime there are changes in number of files.


#!/bin/bash

files=(
        "/home/ec2-user/Deploy/ATPConsumer/docker-compose.yml"

)
no = 1;
for file in "${files[@]}"; do

  echo "${no} Building ${file}"
  docker compose -f "$file" build
  ((no++))
  sleep 10
done
