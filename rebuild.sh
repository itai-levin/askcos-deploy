cd ../askcos-core
sudo make build TAG=2020.07 DATA_VERSION=2020.07
cd ../askcos-site
sudo make build TAG=2020.07 CORE_VERSION=2020.07
cd ../askcos-deploy
sudo bash deploy.sh update -v 2020.07 --local
