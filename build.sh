#!/bin/bash
apt-get update
apt-get install -y ruby-full build-essential
gem install bundler
bundle install
