# run - run an image container
# d - run as daemon
# p - map hostport to container port
#   50000 - jenkins slaves
#   8080 - jenkins web ui
#   4444 - selenium grid
# v - map host directory to volume container directory
# name - name of the container
docker run -d -p 50000:50000 -p 8082:8080 -p 4444:4444 -v /Users/jamesa/Downloads/installed/repositories/dockerjenkins_volatile.bitbucket.brownpapertickets:/var/jenkins_home --name BPTDockerJenkinsContainer20160701B jimarasim/jenkins:bpt20160701


