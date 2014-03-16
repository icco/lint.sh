class Linter
  attr_accessor :code

  def initialize
    @code = ""
    cli = Rubocop::CLI.new
  end

  def analyze
    p cli.run
    if self.code.empty?
      raise ArgumentError "You need to give the Linter code to Lint"
    end
  end
end
