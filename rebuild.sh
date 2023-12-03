docker exec spring_boot /bin/sh -c "cd building;mvn clean;mvn install;cp target/*.jar /main-app/app.jar"

docker compose restart