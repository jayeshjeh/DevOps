#build microservice using sh script(config from ecr)


#!/bin/bash
folder_path="/home/ec2-user/Deploy"

for directory in "$folder_path"/*; do
    if [ -d "$directory" ]; then

        dir_name=$(basename "$directory")

        dir_name_lowercase=$(echo "$dir_name" | tr '[:upper:]' '[:lower:]')

        echo "Directory name: $dir_name_lowercase"
        cd "$directory"

        build_script="$directory/imagebuild.sh"
        if [ -f "$build_script" ]; then
            echo "*************************************"
            echo "Building Microservice: $dir_name"
            echo "*************************************"
            chmod +x "$build_script"
            "$build_script" "$dir_name_lowercase"
        else
            echo "build.sh not found in directory: $directory"
        fi
        cd -

        sleep 5
    fi
done
