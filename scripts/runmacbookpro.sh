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
docker run -d -p 50000:50000 -p 8080:8080 -p 4444:4444 -p 3000:3000 -p 3001:3001 -p 3002:3002 -p 3003:3003 -p 3004:3004 -p 3005:3005 -v /Users/jameskarasim/Downloads/installed/repositories/dockerjenkins_volatile.xcode.jaemzware
:/var/jenkins_home --name jaemzware jenkins:latest


http://seattle.craigslist.org/search/apa?sort=pricedsc&hasPic=1&max_price=2000&bedrooms=3&bathrooms=2&pets_cat=1&housing_type=6


