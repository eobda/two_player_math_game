class Game
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = 0
    @game_over = false
  end

  def play_game
    puts "Player 1 lives: #{@players[0].lives}"
    puts "Player 2 lives: #{@players[1].lives}"
  end

end
