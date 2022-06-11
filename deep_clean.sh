#!/bin/bash
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker volume prune
sudo docker image prune -a

sudo systemctl daemon-reload
sudo systemctl restart docker
