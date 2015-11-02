#!/usr/bin/env bash

#install PPA
curl -sL https://deb.nodesource.com/setup | sudo bash -

#install devps
sudo apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev

#install build-essentials
sudo apt-get install build-essential libssl-dev

#aptitude
sudo apt-get install aptitude

#This will update the packages on your system and install codecs for proprietary files with restricted copyright (MP3, AVI, MPEG, Microsoft fonts) and Adobe Flash Player:
sudo apt-get update && sudo apt-get dist-upgrade  
sudo apt-get install ubuntu-restricted-extras 

echo "** tools_linux instalado **"