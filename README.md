# student-app

# Set Hostname Build Server
### ``` $ sudo hostnamectl set-hostname build-server```

# Install Java
### ```$ sudo amazon-linux-extras install java-openjdk11 -y```

# Install Git SCM and mysql client
### ```$ sudo yum install git mysql -y```

# Verify the Java and Git Version
### ```$ java -version```

### ```$ git --version```

### ```$ sudo chown -R ec2-user:ec2-user /opt```

# Download and Install Tomcat server

### ```$ cd /opt/```

### ```$ wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz```

### ```$ tar -xvf apache-tomcat-9.0.65.tar.gz```

### ```$ mv apache-tomcat-9.0.65 tomcat```

### ```$ rm -f apache-tomcat-9.0.65.tar.gz```

### ```$ chown -R ec2-user:ec2-user /opt/tomcat/```

# Register Tomcat as a Service

### $ echo '# Systemd unit file for tomcat
[Unit]
Description=Apache Tomcat Web Application Container
After=syslog.target network.target
[Service]
Type=forking
Environment=JAVA_HOME=/usr/lib/jvm/jre-11-openjdk-11.0.13.0.8-1.amzn2.0.3.x86_64/
Environment=CATALINA_PID=/opt/tomcat/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/tomcat/
Environment=CATALINA_BASE=/opt/tomcat/
Environment="CATALINA_OPTS=-Xms512M -Xmx512M -server -XX:+UseParallelGC"
Environment="JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom"
ExecStart=/opt/tomcat/bin/startup.sh
ExecStop=/opt/tomcat/bin/shutdown.sh
User=ec2-user
Group=ec2-user
[Install]
WantedBy=multi-user.target' > /etc/systemd/system/tomcat.service

### ```$ systemctl daemon-reload```

### ```$ systemctl start tomcat```

### ```$ systemctl enable tomcat```
