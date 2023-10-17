class Player
  attr_reader :id, :total_lives
  attr_accessor :lives

  def initialize(id, lives)
    @id = id
    @total_lives = lives
    @lives = lives
  end

  def status
    "#{@lives}/#{@total_lives}"
  end

  def reduce_lives
    @lives -= 1
  end

end