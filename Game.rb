class Game

  def initialize()
    @player1 = Player.new(1, 3)
    @player2 = Player.new(2, 3)
    @current_player = @player1
    play_turn
  end

  def play_turn
    question = Question.new
    question.ask(@current_player)
    answer = gets.chomp.to_i
    handle_player_answer(answer == question.answer)
  end

  def handle_player_answer(isCorrect)
    if isCorrect
      puts "\nYES! You are correct."
    else
      puts "\nSeriously? NO!"
      @current_player.reduce_lives
    end

    puts "P#{@player1.id}: #{@player1.status} vs P#{@player2.id}: #{@player2.status}"

    if @current_player.lives == 0
      declare_winner
      return
    end

    switch_player
    play_turn
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def declare_winner
    winning_player = @current_player == @player1 ? @player2 : @player1
    puts "\n\nPlayer #{winning_player.id} wins with a score of #{winning_player.lives}/3\n----- GAME OVER -----\nGood bye!"
  end

end