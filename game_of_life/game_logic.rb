require_relative './game_board.rb'

module LifeGame

  FLOG = []

  attr_reader :current_board

  class GameLogic
    def initialize(width, hight)
      @previous_board = GameBoard.new(width, hight)
      @current_board = GameBoard.new(width, hight)
    end

    def next_step
    end

    def set(shape_array x, y)
    end

    private
    def is_live?
    end

    def check_around_tile
    end
  end
end