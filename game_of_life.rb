# Basic File

class Game
end

class World
  attr_accessor :rows, :cols, :cell_grid
  
  def initialize(rows = 3, cols = 3)
    @rows = rows
    @cols = cols
    
    #[[Cell.new, Cell.new, Cell.new]
    # [Cell.new, Cell.new, Cell.new]
    # [Cell.new, Cell.new, Cell.new]]
    
    @cell_grid = Array.new(rows) do |row|
      Array.new(cols) do |col|
        Cell.new(col, row)
      end
    end
  end
end

class Cell
  attr_accessor :alive, :x, :y
  
  def initialize(x=0, y=0)
    @alive = false
    @x = x
    @y = y
  end
end