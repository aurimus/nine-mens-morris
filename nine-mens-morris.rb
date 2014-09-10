require 'active_support/all'

class Morris
  attr_accessor :gameboard, :currentPlayer

  def initialize(gameboard = [[0,0,0],[0,0,0],[0,0,0]])
  	@gameboard = gameboard
    @currentPlayer = 1
    @numOfThees = 0
  end

  def move(col, row)
    @gameboard[row][col] = @currentPlayer
    update_thees

    @currentPlayer = if @currentPlayer == 2 then 1 else 2 end
  end

  def num_thees

    currNumThees = 0;
    for row in 0..2
      if gameboard[0, row] == gameboard[1, row] && gameboard[1, row] == gameboard[2, row]
        currNumThees++
    end

    for col in 0..2
      if gameboard[col, 0] == gameboard[col, 1] && gameboard[col, 1] == gameboard[col, 2]
        currNumThees++
    end
    
  end

end

Morris.new()