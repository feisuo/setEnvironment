# download java
curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz > jdk.tar.gz


tar xzvf jdk.tar.gz
sudo mkdir /usr/local/java
sudo mv jdk1.8.0_45 /usr/local/java/
sudo ln -s /usr/local/java/jdk1.8.0_45 /usr/local/java/jdk

sudo vi /etc/profile.d/java.sh
export PATH="$PATH:/usr/local/java/jdk/bin"
export JAVA_HOME=/usr/local/java/jdk

source /etc/profile.d/java.sh
