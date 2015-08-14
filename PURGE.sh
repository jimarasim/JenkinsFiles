# THIS SCRIPT IS INTENDED TO CLEAN ALL OLD BUILDS AND WORKSPACES FROM JENKINS
cd /var/lib/jenkins/jobs
sudo rm -rf */builds/*
sudo rm -rf */modules
cd ../workspace
sudo rm -rf */*
