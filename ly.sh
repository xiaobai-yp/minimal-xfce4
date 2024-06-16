#!/bin/sh
# Dependencies for Ly Console Manager
sudo apt install -y libpam0g-dev libxcb-xkb-dev

# Install Ly Console Display Manager
cd 
cd Downloads
git clone https://github.com/xiaobai-yp/Ly.git
cd Ly/
make
sudo make install installsystemd
sudo systemctl enable ly.service
