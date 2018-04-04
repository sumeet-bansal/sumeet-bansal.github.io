#!/usr/bin/env bash

sudo apt-get install vim git make -y
sudo apt install ruby -y
sudo gem install bundler
sudo apt-get install ruby-dev zlib1g-dev -y
sudo bundle update
sudo bundle install
bundle exec jekyll serve
