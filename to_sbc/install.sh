apt-get -y install git
apt-get -y install vim
git config --global http.sslVerify false
rm -rf DataLoggerProject
git clone https://github.com/njligames/DataLoggerProject.git
apt-get -y install python
apt-get -y install python-pip
cd DataLoggerProject/
cd SBCLogger
sh install.sh
cd ../SBCLoggerService/
sh install.sh
mkdir /usr/data
cd ~/
apt-get -y install unzip
unzip PhidgetsPython.zip
cd PhidgetsPython
python setup.py install

/usr/bin/yes | pip install apns
apt-get -y install python-flask
/usr/bin/yes | pip install pydaemon

phidgetlogging21 create

/usr/bin/yes | pip install python-dateutil
/usr/bin/yes | pip install flask --upgrade