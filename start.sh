#!/bin/bash
SERVICE_PORT=8080
export SERVICE_PORT
DB_USER=jhjeon
export DB_USER
DB_PASSWD=jun13576
export DB_PASSWD
nohup java -jar bgsearc-project.jar &
