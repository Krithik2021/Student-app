# student-app

# Set Hostname Build Server
```hostnamectl set-hostname build-server```

# Install Java
`amazon-linux-extras install java-openjdk11 -y`

# Install Git SCM and mysql client
yum install git mysql -y

# Verify the Java and Git Version
java -version

git --version

chown -R ec2-user:ec2-user /opt

# Download Install Tomcat server
cd /opt/
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz
tar -xvf apache-tomcat-9.0.65.tar.gz
mv apache-tomcat-9.0.65 tomcat
rm -f apache-tomcat-9.0.65.tar.gz

chown -R ec2-user:ec2-user /opt/tomcat/
