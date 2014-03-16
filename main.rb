require './dependencies'

class Main < Sinatra::Base
  set :root, File.dirname(__FILE__)

  YAML::load(File.open('config/database.yml'))[$env].symbolize_keys.each do |key, value|
    set key, value
  end

  configure $env.to_sym do
    enable :raise_errors
    enable :sessions
    enable :logging

    ActiveRecord::Base.establish_connection(adapter: settings.adapter,
                                            username: settings.username,
                                            password: settings.password,
                                            host: settings.host,
                                            database: settings.database)
  end


  [
    Dir["./app/helpers/*.rb"],
    Dir["./app/concerns/*.rb"],
    Dir["./app/models/*.rb"],
    Dir["./app/controllers/*/*.rb"],
  ].each do |file|
    require file
  end
end
