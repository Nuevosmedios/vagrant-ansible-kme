#!/bin/sh
cd ~
virtualenv ~/.kmelx
. ~/.kmelx/bin/activate
cd /vagrant/kme
git checkout local-heroku
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache
pip install -r requirements.txt
echo "DONE!"
