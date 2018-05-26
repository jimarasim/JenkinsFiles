# run - run an image container
# d - run as daemon
# p - map hostport to container port
#   50000 - jenkins slaves
#   8080 - jenkins web ui
#   4444 - selenium grid
#   465 - email
#   587 - email
# v - map host directory to volume container directory
# name - name of the container
docker run -d -p 3000:3000 -p 3001:3001 -p 3002:3002 -p 3003:3003 -p 3004:3004 -p 3005:3005 -p 465:465 -p 587:587 -p 50000:50000 -p 8080:8080 -p 4444:4444 -v /Users/jameskarasim/Downloads/installed/repositories/dockerjenkins_volatile.xcode.jaemzware:/var/jenkins_home --name jaemzware jimarasim/jenkins:latest


