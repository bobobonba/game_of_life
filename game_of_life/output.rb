module GameOfLife
  class Output
    def initialize(hash)
      @hash = hash
      p @hash
    end

    def clear
      puts("\033[2J\033[0;0H")
    end

    def display(array)
      array.each do |row|
        row.each_with_index do |ele, index|
          if index >= row.size - 1
            char = @hash[ele]
            puts("#{char}\n")
          else
            char = @hash[ele]
            print("#{char}")
          end
        end
      end
    end
  end
end