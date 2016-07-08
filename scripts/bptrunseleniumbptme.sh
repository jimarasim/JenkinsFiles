#!/usr/bin/env bash
# run - run an image container
# d - run as daemon
# p - map hostport to container port
#   50000 - jenkins slaves
#   8080 - jenkins web ui
#   4444 - selenium grid
# v - map host directory to volume container directory
# name - name of the container
docker run -d -p 50000:50000 -p 8082:8080 -p 4444:4444 -p 5550:5550 -p 5551:5551 -p 5552:5552 -p 5553:5553 -p 5554:5554 -p 5555:5555 -p 5556:5556 -p 5557:5557 -p 5558:5558 -p 5559:5559 -p 5560:5560 -p 5561:5561 -v /home/jamesa/downloads/installed/dockerjenkins_volatile.bitbucket.brownpapertickets:/var/jenkins_home --name bptrunseleniumbptme jimarasim/jenkins:bpt20160701