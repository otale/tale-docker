#!/bin/bash

#find tale jar package
TALE_NAME=$(find $TALE_HOME -name "tale*.jar")

echo $TALE_NAME 

#run the tale
java -jar $TALE_NAME 

