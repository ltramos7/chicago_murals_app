require 'bundler'
Bundler.require

$LOAD_PATH.unshift(File.expand_path("app", __dir__))

require File.expand_path('../config/environment', __FILE__)
# use User
run App

# use ProjectOneApp
# run User     
#The run command will determine which model is used for the '/' route