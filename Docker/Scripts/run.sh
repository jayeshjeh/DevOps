# to run all the compose files at once.


#!/bin/bash
echo "to start run './run.sh up' & to stop run './run.sh down'"

#to start docker service
sudo systemctl start docker
# docker stop alpine
# docker rm alpine2
# docker run -dit --name alpine2 --network test-net alpine

folder_path="/home/ec2-user/Deploy"

for directory in "$folder_path"/*; do

    if [ -d "$directory" ]; then
        dir_name=$(basename "$directory")
        cd "$directory"
        dir_name_l=$(echo "$dir_name" | tr '[:upper:]' '[:lower:]')

        if [ -f "docker-compose.yml" ]; then
            if [ "$1" = "up" ]; then
                docker compose up -d
                echo "Running docker-compose.yml in directory $no: $directory"
            elif [ "$1" = "down" ]; then
                docker compose down
                echo "Stopping docker-compose.yml in directory $no: $directory"
            fi
        else
            echo "No docker-compose.yml found in directory: $directory"
        fi
        cd -

    fi
done
docker ps
