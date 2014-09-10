require File.join(File.dirname(__FILE__), 'nine-mens-morris')

describe Morris do


	it 'should start with an empty board' do
		morris = Morris.new()
		expect(morris.gameboard).to eq([[0,0,0],[0,0,0],[0,0,0]])
	end

	it 'should start with player 1' do
		morris = Morris.new()
		expect(morris.currentPlayer).to eq(1)
	end

	it 'should make a move for currentPlayer' do
		morris = Morris.new
		morris.move(0, 0)
		expect(morris.gameboard).to eq([[1,0,0],[0,0,0],[0,0,0]])
	end

	it 'changes the player when you make a move' do
		morris = Morris.new
		pervPlayer = morris.currentPlayer
		morris.move(0, 0)
		nextPlayer = morris.currentPlayer
		expect(pervPlayer == nextPlayer).to be(false)
	end

	it 'doesnt change player when currentPlayer made a row or col' do
		morris = Morris.new([[1,1,0],[0,0,0],[0,0,0]])
		pervPlayer = morris.currentPlayer
		morris.move(0, 2)
		nextPlayer = morris.currentPlayer
		expect(pervPlayer == nextPlayer).to be(true)
	end

	# it 'shouldnt allow a move on the same spot' do
	# 	morris = Morris.new
	# 	morris.move(1,2)
	# 	morris.move(1,2)
	# 	expect(morris.gameboard).to be([[1,1,0],[0,0,0],[0,0,0]])
	# end

end
