require_relative('./output.rb')

module GameOfLife
  class LifeGame
    LIVE = 1
    DEAD = 0

    attr_reader :current_board

    def initialize(width, hight)
      @width = width
      @hight = hight
      @current_board = GameBoard.new(width, hight, DEAD)
      @future_board = nil
    end

    def next_step
      @future_board = GameBoard.new(@width, @hight, DEAD)

      @width.times do |x|
        @hight.times do |y|
          @future_board.change_ele(x, y, LIVE) if can_live?(x, y)
        end
      end

      @current_board = @future_board
    end

    def random_set(num)
      num.times do
        rand_x = rand(@width)
        rand_y = rand(@hight)

        if is_live?(rand_x, rand_y)
          redo      
        else
          @current_board.change_ele(rand_x, rand_y, LIVE)
        end
      end
    end

    private
    def is_live?(x,y)
      if @current_board.element_in(x, y) == LIVE
        true
      else
        false
      end
    end

    def can_live?(x, y)
      living_cell = 0

      (-1..1).each do |dy|
        (-1..1).each do |dx|
          if x + dx < 0 || y + dy < 0 || \
             x + dx >= @width || y + dy >= @hight || \
             (x + dx == 0 && y + dy == 0)
            next
          else
            living_cell += @current_board.element_in(x + dx, y + dy)==LIVE ? 1 : 0
          end
        end
      end

      if  living_cell >= 3 && living_cell <= 4
        true
      else
        false
      end
    end
  end
end