#! /bin/bash
# Script that install various packages needed for Gadgetron, SIRF etc
# on debian-based system (including Ubuntu).
#
# Needs to be run with super-user permissions, e.g. via sudo

#if [ -z "SUDO" ]; then SUDO=sudo; fi

echo "Installing Gadgetron pre-requisites..."

$SUDO apt-get install -y --no-install-recommends libhdf5-serial-dev git-core cmake \
      libboost-all-dev build-essential libfftw3-dev h5utils \
      hdf5-tools hdfview python-dev liblapack-dev libxml2-dev \
      libxslt-dev libarmadillo-dev libace-dev  \
      g++ libgtest-dev libplplot-dev \
      python-dev

echo "Installing SWIG..."

$SUDO apt-get install -y --no-install-recommends swig

# TODO replace with pip install
echo "Installing python libraries etc"
$SUDO apt-get install -y --no-install-recommends  python-scipy python-docopt  python-numpy python-h5py python-matplotlib python-libxml2 python-psutil spyder python-tk

echo "Installing misc packages"
$SUDO apt-get install -y dmz-cursor-theme 

# could do recent version of CMake
# This would be necessary for the Superbuild
#cd ~/Downloads
#wget https://cmake.org/files/v3.7/cmake-3.7.2-Linux-x86_64.tar.gz
#cd /usr/local
#$SUDO tar xzf ~/Downloads/cmake-3.7.2-Linux-x86_64.tar.gz
