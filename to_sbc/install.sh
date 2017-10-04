cd ~/

apt-get -y install unzip
unzip to_sbc.zip
mv to_sbc/phidget_Access_Point_support_v2.tar.gz .
mv to_sbc/PhidgetsPython.zip .

tar -xf phidget_Access_Point_support_v2.tar.gz
./sfl-update.sh
mkdir phidget_Access_Point_support_v2
mv bin/ phidget_Access_Point_support_v2 
mv overlay/ phidget_Access_Point_support_v2
mv phidget_Access_Point_support_v2.tar.gz phidget_Access_Point_support_v2
mv rtl8188/ phidget_Access_Point_support_v2/
mv sfl-update.sh phidget_Access_Point_support_v2/



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
unzip PhidgetsPython.zip
cd PhidgetsPython
python setup.py install
cd ~/
rm -rf PhidgetsPython

/usr/bin/yes | pip install apns
apt-get -y install python-flask
/usr/bin/yes | pip install pydaemon

phidgetlogging21 create

/usr/bin/yes | pip install python-dateutil
/usr/bin/yes | pip install flask --upgrade
