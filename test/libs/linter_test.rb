require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Linter Lib" do
  it 'can construct a new instance' do
    @linter = Linter.new
    refute_nil @linter
  end

  it 'raises exception when no code' do
    assert_raises(ArgumentError) { Linter.new.analyze }
  end

  it 'can analyze some code' do
    @linter = Linter.new
    @linter.code = "[1, 2, 3].inject(:+)"
    refute_nil @linter.analyze
  end

  it 'has bad_style? return false if code is of correct style' do
    @linter = Linter.new
    @linter.code = "[1, 2, 3].inject(:+)"
    @linter.analyze

    assert_false @linter.bad_style?
  end
end
