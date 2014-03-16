RACK_ENV = 'test' unless defined?(RACK_ENV)
require File.expand_path('../../config/boot', __FILE__)
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

class MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app(app = nil, &blk)
    @app ||= block_given? ? app.instance_eval(&blk) : app
    @app ||= Padrino.application
  end
end
