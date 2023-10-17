class Question
  attr_reader :num1, :num2

  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask(player)
    puts "\n\n\n------ NEW TURN ------\nPlayer #{player.id}: What does #{@num1} + #{@num2} equal?"
  end

  def answer
    @num1 + @num2
  end

end