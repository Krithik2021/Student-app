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
