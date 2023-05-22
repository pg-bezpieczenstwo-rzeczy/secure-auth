
#/bin/bash


ROCKET_ADDRESS=127.0.0.1 ROCKET_PORT=8081 ./src/sinvis &
SINVIS_PID=$!
echo $SINVIS_PID

java -jar ./src/destressor-0.0.1-SNAPSHOT.jar &
DESTRESSOR_PID=$!
echo $DESTRESSOR_PID

java -jar ./src/WhoAsked-0.0.1-SNAPSHOT.jar &
WHOASKED_PID=$!
echo $WHOASKED_PID

java -jar ./src/Babackend-0.0.1-SNAPSHOT.jar
BACKEND_PID=$!
echo $BACKEND_PID

ROCKET_ADDRESS=127.0.0.1 ROCKET_PORT=8080 ./src/server
TM_PID=$!
echo $TM_PID
