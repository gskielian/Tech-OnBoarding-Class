#!/bin/bash

sudo apt remove default-jdk
sudo apt install openjdk-8-jdk



wget https://gerrit-releases.storage.googleapis.com/gerrit-3.1.3.war

export GERRIT_SITE=~/gerrit_testsite
java -jar gerrit*.war init --batch --dev -d $GERRIT_SITE

git config --file $GERRIT_SITE/etc/gerrit.config httpd.listenUrl 'http://localhost:8060'
$GERRIT_SITE/bin/gerrit.sh restart


