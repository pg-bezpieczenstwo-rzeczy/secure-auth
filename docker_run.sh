
#/bin/bash


ROCKET_PORT=8081 ./src/sinvis &
SINVIS_PID=$!
echo $SINVIS_PID

java -jar ./src/destressor-0.0.1-SNAPSHOT.jar &
DESTRESSOR_PID=$!
echo $DESTRESSOR_PID

java -jar ./src/WhoAsked-0.0.1-SNAPSHOT.jar &
WHOASKED_PID=$!
echo $WHOASKED_PID

ROCKET_PORT=8080 ./src/server
TM_PID=$!
echo $TM_PID
