# Maria DB Server Setup

### ```$ sudo hostnamectl set-hostname db-server```

### ```$ sudo yum install -y mariadb-server git```

### ```$ sudo systemctl enable mariadb.service```

### ```$ sudo systemctl start mariadb.service```

### ```$ cd /tmp/ && git clone https://gitlab.com/rns-app/student-app.git```

### ```$ mysql -uroot < /tmp/student-app/dbscript/studentapp.sql```

# Verify DB and schema

### ```$ mysql -ustudent -pstudent1```

### ```> show databases```

### ```> use studentapp```

### ```> show tables```

### ```> select * from students```
