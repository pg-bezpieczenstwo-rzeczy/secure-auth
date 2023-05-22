#/bin/bash

ROCKET_PORT=8080 ./src/server &
TM_PID=$!
echo $TM_PID

ROCKET_PORT=8081 ./src/sinvis &
SINVIS_PID=$!
echo $SINVIS_PID

java -jar ./src/destressor-0.0.1-SNAPSHOT.jar &
DESTRESSOR_PID=$!
echo $DESTRESSOR_PID

java -jar ./src/WhoAsked-0.0.1-SNAPSHOT.jar &
WHOASKED_PID=$!
echo $WHOASKED_PID

java -jar ./src/Babackend-0.0.1-SNAPSHOT.jar &
BACKEND_PID=$!
echo $BACKEND_PID

java -jar ./src/Stressor-0.0.1-SNAPSHOT.jar &
STRESSOR_PID=$!
echo $STRESSOR_PID

while [[ $string != 'exit' ]] || [[ $string == '' ]] # While string is different or empty...
do
    read -p "Enter string: " string # Ask the user to enter a string
done 
    kill -INT $TM_PID
    kill -INT $SINVIS_PID
    kill $DESTRESSOR_PID
    kill $WHOASKED_PID
    kill $BACKEND_PID
    kill $STRESSOR_PID
