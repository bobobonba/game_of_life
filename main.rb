require_relative './game_of_life/game_of_life.rb'

life_game = LifeGame::GameLogic.new(20, 20)
display = LifeGame::Output.new

life_game.set('flog', 3, 1)

display.loop.every(1) do |display|
    current_board = life_game.current_board
    display.show(current_board)
    display.output_clear
    life_game.next_step
end
