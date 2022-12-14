#!/bin/bash

bundle install
yarn install
rails db:create
rails db:migrate
bin/dev