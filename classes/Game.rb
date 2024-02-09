class Game
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = 0
    @game_over = false
  end

  def play_game
    puts "Let's play!"
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
end
