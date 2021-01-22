docker container run -d \
  --name  db \
  -e MYSQL_ROOT_PASSWORD=pass \
  -e MYSQL_USER=user \
  -e MYSQL_PASSWORD=pass \
  -e MYSQL_DATABASE=tododb \
  -v $(pwd)/schema.sql:/docker-entrypoint-initdb.d/1.sql \
  -v $(pwd)/data.sql:/docker-entrypoint-initdb.d/2.sql \
  mysql:5.7 