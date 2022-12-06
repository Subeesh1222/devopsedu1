stateofweb=$(docker container inspect --format "{{.State.Status}}" phpwebsite)
if [[ $stateofweb  != 'running' ]] ;then
        rm -rf phpwebsite
else
        echo "Website Container is running"
fi
