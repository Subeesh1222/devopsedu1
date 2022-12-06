stateofweb=$(sudo docker container inspect --format "{{.State.Status}}" phpwebsite2)
if [[ $stateofweb  != 'running' ]] ;then
        rm -rf phpwebsite
else
        echo "Website Container is running"
fi
