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
