module GameOfLife
  class GameBoard
    def initialize(width, hight, init_ele)
      @width = width
      @hight = hight
      @board = Array.new(hight) { Array.new(width, init_ele) }
    end

    def change_ele(x, y, element)
      @board[x][y] = element
    end

    def element_in(x, y)
      @board[x][y]
    end

    def all
      @board
    end
  end
end