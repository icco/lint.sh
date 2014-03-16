class Linter
  attr_accessor :code

  def initialize
    @code = ""
  end

  def analyze
    cli = Rubocop::CLI.new
    Padrino.logger.push cli.run
    if self.code.empty?
      raise ArgumentError "You need to give the Linter code to Lint"
    end
  end
end
