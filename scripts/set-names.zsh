#!/bin/zsh

# Small script for setting git name and device names

sudo -v

echo "Enter computer, host, and local host name:"
read device_name
sudo scutil --set ComputerName $device_name
sudo scutil --set HostName $device_name
sudo scutil --set LocalHostName $device_name

echo "Enter git username:"
read git_name
git config --global user.name $git_name

echo "Enter git email:"
read git_email
git config --global user.email $git_email

echo "Done"