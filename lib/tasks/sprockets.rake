require 'sinatra/asset_pipeline/task.rb'
require './main'

Sinatra::AssetPipeline::Task.define! Main
