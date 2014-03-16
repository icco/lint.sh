require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Linter Lib" do
  it 'can construct a new instance' do
    @linter = Linter.new
    refute_nil @linter
  end

  it 'can analyze some code' do
    @linter = Linter.new
    @linter.code = "[1, 2, 3].inject(:+)"
    refute_nil @linter.analyze
  end
end
