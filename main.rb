require './game'
require './players'
require './question'
require './turn'

charlie = Player.new("Charlie")
enzo = Player.new("Enzo")

game = Game.new(charlie, enzo)
game.start_game