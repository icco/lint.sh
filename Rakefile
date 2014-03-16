require './dependencies'

Dir['./lib/tasks/*.rake'].each { |f| load f }

task :default => :test
task :test do
  exec "rake features"
end
