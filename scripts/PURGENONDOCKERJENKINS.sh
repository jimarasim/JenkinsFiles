# THIS SCRIPT IS INTENDED TO CLEAN ALL OLD BUILDS AND WORKSPACES FROM JENKINS
cd 	/var/jenkins_home
sudo rm -rf */builds/*
sudo rm -rf */modules
cd ../workspace
sudo rm -rf */*
