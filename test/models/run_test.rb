require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Run Model" do
  it 'can construct a new instance' do
    @run = Run.new
    refute_nil @run
  end
end
