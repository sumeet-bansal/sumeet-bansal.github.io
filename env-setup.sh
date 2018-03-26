#!/usr/bin/env bash

sudo apt-get install vim git make
sudo apt install ruby
sudo gem install bundler
sudo apt-get install ruby-dev zlib1g-dev
sudo bundle update
sudo bundle install
bundle exec jekyll serve
