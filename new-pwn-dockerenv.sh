#!/bin/bash

sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g'  /etc/apt/sources.list
sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g'  /etc/apt/sources.list
apt update
apt install vim git wget gdb -y
sed -i "s/#force_color_prompt=/force_color_prompt=/g" ~/.bashrc


cd ~
export http_proxy=$1
export https_proxy=$1
git clone https://github.com/longld/peda.git
git clone https://github.com/pwndbg/pwndbg.git
git clone https://github.com/scwuaptx/Pwngdb.git
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
export http_proxy=
export https_proxy=

apt install python3-pip -y
pip install -i https://mirrors.ustc.edu.cn/pypi/web/simple pip -U
pip config set global.index-url https://mirrors.ustc.edu.cn/pypi/web/simple
cd pwndbg
./setup.sh


cd ~
cp ./Pwngdb/.gdbinit ~/
sed -i "1isource /root/pwndbg/gdbinit.py" ~/.gdbinit
sed -i "s/register,code,stack//g" ./peda/lib/config.py

apt-get install python python-dev git libssl-dev libffi-dev build-essential -y

python2 ./get-pip.py
python2 -m pip install --upgrade pwntools pathlib2
