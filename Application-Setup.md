# Application Setup

## Setup the Maven

### ```$ cd /opt/```

### ```$ wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz```

### ```$ tar -xzf apache-maven-3.8.6-bin.tar.gz```

### ```$ rm -rf apache-maven-3.8.6-bin.tar.gz```

### ```$ mv apache-maven-3.8.6 maven3```

### ```$ echo $PATH```

### ```$ echo "export PATH=$PATH:/opt/maven3/bin/" >> ~/.bashrc```

### ```$ source .bashrc```

### ```$ mvn --version```

# Download Application and DB Connector

## Copy Mysql connector to the $TOMCAT_HOME/lib folder

### ```$ cd /opt/```

### ```$ git clone https://gitlab.com/rns-app/student-app.git```

### ```$ cp student-app/dbscript/mysql-connector.jar /opt/tomcat/lib/```

### ```$ ll /opt/tomcat/lib/```

#### Also we need to specify the details of DB in tomcat config and application will try to consume it. Add the following lines in $TOMCAT_HOME/conf/context.xml. Add these lines just before the last line.

<Resource name="jdbc/TestDB" auth="Container" type="javax.sql.DataSource" maxTotal="100" maxIdle="30" maxWaitMillis="10000" username="student" password="student1" driverClassName="com.mysql.jdbc.Driver" url="jdbc:mysql://{DBSERVER-IPADDRESS}:3306/studentapp"/>

## Package the Application using Maven 

### ```$ cd /opt/student-app/

### ```$ mvn clean package```

### ```$ cp target/studentapp-*.war /opt/tomcat/webapps/student.war

## Restart the Tomcat Server

### ```$ sudo systemctl restart tomcat```

## Test the Web and App server URL

### ```http://PUBLIC_IP```

### ```http://PUBLIC_IP/student```

### ```http://PUBLIC_IP:8080/student```

## Test the DB Connection

### ```$ mysql -h{DB_HOST_Private_IP} -ustudent -pstudent1```

### ```> show databases```

### ```> exit```
