require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Linter Model" do
  it 'can construct a new instance' do
    @linter = Linter.new
    refute_nil @linter
  end
end
