ENV['RACK_ENV'] ||= 'development'

require 'rubygems'
require 'bundler'

$env = ENV['RACK_ENV']
Bundler.require :default, $env.to_sym

require './config/database'
