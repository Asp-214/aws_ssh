#!/bin/bash

sudo apt update
sudo apt install git -y

git clone https://github.com/Asp-214/aws_ssh.git /mnt

rm /etc/ssh/sshd_config

cp /mnt/aws_ssh/sshd_config /etc/ssh/sshd_config

rm -rf /mnt/aws_ssh/

echo "ubuntu:user" | sudo chpasswd

echo "root:root" | sudo chpasswd

systemctl restart ssh
