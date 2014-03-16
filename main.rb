require './dependencies'

class Main < Sinatra::Base
  set :root, File.dirname(__FILE__)

  enable :raise_errors
  enable :sessions
  enable :logging

  [
    Dir["./app/helpers/**/*.rb"],
    Dir["./app/concerns/**/*.rb"],
    Dir["./app/models/**/*.rb"],
    Dir["./app/controllers/**/*.rb"],
  ].flatten.each do |file|
    require file
  end
end
