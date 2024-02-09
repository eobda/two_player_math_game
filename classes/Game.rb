class Game
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = 0
    @winning_player = 0
    @game_over = false
  end

  def play_game
    while !@game_over
      play_turn
      check_score(@players[0], @players[1])
      switch_player!
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def switch_player!
    @current_player = @current_player == 0 ? 1 : 0
  end

  def play_turn
    question = Question.new
    puts "Player #{@current_player + 1}: #{question.ask_question}"
    print "> "
    guess = $stdin.gets.chomp.to_i

    if question.correct?(guess)
      puts "Player #{@current_player + 1}: YES! You are correct."
    else
      puts "Player #{@current_player + 1}: Seriously? No!"
      @players[@current_player].lose_life
    end
  end

  def check_score(player_1, player_2)
    if player_1.lives == 0 || player_2.lives == 0
      @winning_player = player_1.lives > 0 ? 0 : 1
      puts "Player #{@winning_player + 1} wins with a score of #{@players[@winning_player].lives}/3"
      end_game
    else
      puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
      puts "----- NEW TURN -----"
    end
  end

  def end_game
    @game_over = true
  end
end
