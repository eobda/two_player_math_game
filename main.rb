require './classes/Game'
require './classes/Player'

player_1 = Player.new
player_2 = Player.new
game = Game.new(player_1, player_2)

game.play_game