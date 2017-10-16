# BASH

# intall Java on Ubuntun 16.04

# 1 update ubuntun system
echo "1. Update ubuntun system"
sudo apt-get update

# 2 install Oracle JDK
# 2.1 Install the software-properties-common package if you don’t already have it. 
#This provides an easier way to add new repositories
echo "2.1 Install software-properties-common"
sudo apt-get install software-properties-common

# 2.2 Add the Java PPA
# This repository is not maintained by Oracle. It does not contain actual Java files,
# but does allow us to download installers for Oracle Java software. Before using the installers,
# you’ll be prompted to accept a license agreemen
echo "2.2 Add the Java PPA"
sudo add-apt-repository ppa:webupd8team/java

# 2.3 Update the local package cache
echo " 2.3 Update the local package cache"
sudo apt-get update

# 2.4 Install the metapackage
echo "2.4 Install the metapackage"
sudo apt-get install oracle-java8-installer

# 2.5 Verify that Java and the Java compiler have been properly installed
echo $(java -version)
echo $(javac -version)

# 2.6 Since the PPA only provides an installer, and not updates for the JDK itself, 
# you may want to delete it when you’re finished in order to keep your repositories organized
echo "rm repositories"
sudo add-apt-repository -r ppa:webupd8team/java

# 3 Set JAVA_HOME
# 3.1 To set the variable for your system
echo "JAVA_HOME=$(which java)" | sudo tee -a /etc/environment

# 3.2 Reload your system’s environment variables
source /etc/environment

# 3.3 Verify the variable was set correctly
echo $JAVA_HOME