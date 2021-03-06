#!/usr/bin/env bash
# run - run an image container
# d - run as daemon
# p - map hostport to container port
#   50000 - jenkins slaves
#   8080 - jenkins web ui
#   4444 - selenium grid
# v - map host directory to volume container directory
# name - name of the container
sudo docker run -d -p 50000:50000 -p 8082:8080 -p 4444:4444 -v /home/jamesa/downloads/installed/dockerjenkins_volatile.bitbucket.brownpapertickets:/var/jenkins_home --name bpttestautomation jenkins:latest