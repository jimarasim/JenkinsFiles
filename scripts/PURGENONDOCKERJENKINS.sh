# THIS SCRIPT IS INTENDED TO CLEAN ALL OLD BUILDS AND WORKSPACES FROM JENKINS
cd 	/var/jenkins_home
rm -rf */builds/*
rm -rf */modules
cd ../workspace
rm -rf */*
