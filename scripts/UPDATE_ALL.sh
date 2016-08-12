#!/bin/sh

cd ~/devel/ismrmrd
git pull upstream master
cd build
make
sudo make istall

cd ~/devel/gadgetron
git pull upstream master
cd build
make
sudo make istall

cd ~/devel/iUtilities
git pull 
make clean 
make

cd ../xGadgetron
git pull
git checkout upstream_update
cd cGadgetron
make clean 
make
cd ../pGadgetron
make clean
make
cd ../examples
make

cd ~/devel/STIR
git pull upstream master
cd build
make
sudo make istall

cd ~/devel/xSTIR
git pull
git checkout upstream_update
cd cSTIR
make
cd ../pSTIR
make
