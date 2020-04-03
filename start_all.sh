JOIN_RABBIT2="rabbitmqctl stop_app; rabbitmqctl join_cluster rabbit@rabbitmq1; rabbitmqctl start_app"
JOIN_RABBIT3="rabbitmqctl stop_app; rabbitmqctl join_cluster rabbit@rabbitmq1; rabbitmqctl start_app"
JOIN_RABBIT4="rabbitmqctl stop_app; rabbitmqctl join_cluster rabbit@rabbitmq1; rabbitmqctl start_app"

echo -n "Starting container..."
docker-compose down

rm -rf storage
docker-compose up -d

sleep 15

docker exec -ti rabbitmq2 bash -c "$JOIN_RABBIT2"
docker exec -ti rabbitmq3 bash -c "$JOIN_RABBIT3"
docker exec -ti rabbitmq4 bash -c "$JOIN_RABBIT4"
docker exec -ti rabbitmq1 bash -c
