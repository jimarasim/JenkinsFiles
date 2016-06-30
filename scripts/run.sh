#!/usr/bin/env bash
# run - run an image container
# d - run as daemon
# p - map hostport to container port
#   50000 - jenkins slaves
#   8080 - jenkins web ui
#   3000 - stuffed animal war
#   4444 - selenium grid
# v - map host directory to volume container directory
# name - name of the container
docker run -d -p 50000:50000 -p 8080:8080 -p 4444:4444 -v /Users/jameskarasim/Downloads/installed/dockerjenkins_volatile:/var/jenkins_home --name 20160512 jimarasim/jenkins:20160520


