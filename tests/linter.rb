require "minitest/autorun"

class TestLinter < Minitest::Test
  def setup
    @linter = Linter.new
  end

  def test_output
    @linter.analyze
    assert_equal "OHAI!", output
  end
end
