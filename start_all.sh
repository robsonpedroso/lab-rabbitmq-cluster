
JOIN_RABBIT1="rabbitmqctl stop_app; rabbitmqctl join_cluster rabbit@rabbitmq1; rabbitmqctl start_app"

echo -n "Starting container..."
docker-compose down

sudo rm -rf storage

export TIMEOUT=7200

sudo docker-compose -f docker-compose.yml up

sleep 15

sudo docker exec -ti rabbitmq2 bash -c "$JOIN_RABBIT1"
sudo docker exec -ti rabbitmq3 bash -c "$JOIN_RABBIT1"
sudo docker exec -ti rabbitmq4 bash -c "$JOIN_RABBIT1"
