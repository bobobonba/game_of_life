require_relative './game_of_life/game_of_life.rb'

width = 20
hight = 20
life_game = GameOfLife::LifeGame.new(20, 20)
output = GameOfLife::Output.new({GameOfLife::LifeGame::LIVE => '＠', GameOfLife::LifeGame::DEAD => '　'})
life_game.random_set(50)

loop do
  current_board = life_game.current_board
  output.clear
  output.display(current_board.all)

  life_game.next_step
  sleep(0.5)
end
