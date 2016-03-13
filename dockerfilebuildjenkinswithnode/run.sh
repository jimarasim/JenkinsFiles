# run - run an image container
# d - run as daemon
# p - map hostport to container port
#   50000 - jenkins slaves
#   8080 - jenkins web ui
#   3000 - stuffed animal war
#   4444 - selenium grid
# v - map host directory to volume container directory
# name - name of the container
docker run -d -p 50000:50000 -p 8080:8080 -p 3000:3000 -p 4444:4444 -p 465:465 -p 587:587 -v /Users/jameskarasim/Downloads/installed/repositories/dockerjenkins:/var/jenkins_home --name jaemzmac jimarasim/jenkins:jaemzmac

