require_relative './game_of_life/game_of_life.rb'

life_game = LifeGame::GameLogic.new(20, 20)
display = LifeGame::Output.new

life_game.set(LifeGame::FLOG, 3, 1)

loop do
  current_board = life_game.current_board
  display.show(current_board)
  display.output_clear
  life_game.next_step
  sleep(1)
end
