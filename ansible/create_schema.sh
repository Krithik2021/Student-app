#!/bin/bash

cd /tmp/ && git clone https://gitlab.com/rns-app/student-app.git
mysql -uroot < /tmp/student-app/dbscript/studentapp.sql
