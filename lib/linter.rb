class Linter
  attr_accessor :code

  def initialize
    @code = ""
  end

  def analyze
    if self.code.empty?
      raise ArgumentError.new "You need to give the Linter code to Lint"
    end

    parsed = Rubocop::SourceParser.parse(@code)
  end
end
