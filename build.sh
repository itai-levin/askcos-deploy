#!/bin/bash
cd ../askcos-core
sudo make TAG=2020.07 DATA_VERSION=2020.07
cd ../askcos-site
sudo make TAG=2020.07 CORE_VERSION=2020.07
cd ../askcos-deploy
sudo bash deploy.sh deploy -v 2020.07 --local

sudo bash deploy.sh seed-db -r data/templates/bkms-and-reaxys-templates.json.gz -x data/reactions/bkms-reactions.json.gz

sudo ./set_up_model_bkms.sh
