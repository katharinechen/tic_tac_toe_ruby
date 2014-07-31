require 'rspec'
require 'player'
require 'space'
require 'board'
require 'game'

describe :Space do

  describe :initialize do
    it 'initializes a space object' do
      new_space = Space.new(1)
      expect(new_space).to be_an_instance_of Space
    end
  end

  describe :set_mark do
    it 'should mark a space with a symbol' do
      new_space = Space.new(1)
      expect(new_space.marked_by).to eq(nil)
      new_space.set_mark("X")
      expect(new_space.marked_by).to eq("X")
    end
  end

end

describe :Player do

  describe :initialize do
    it 'initializes a player object' do
      new_player = Player.new("X")
      expect(new_player).to be_an_instance_of Player
      expect(new_player.symbol).to eq("X")
    end
  end

  describe :win do
    it 'return the number of times the player has won' do
      new_player = Player.new("X")
      expect(new_player.win).to eq(1)
    end
  end
end

describe :Board do

  describe :initialize do
    it 'initializes a board object' do
      new_board = Board.new(1)
      expect(new_board).to be_an_instance_of Board
      expect(new_board.spaces.length).to eq(9)
    end
  end

  describe :win? do
    it "should set win_game to true if the player has three in a row" do
      new_board = Board.new(1)
      # new_board.spaces[0].set_mark("X")
      # new_board.spaces[4].set_mark("X")
      # new_board.spaces[8].set_mark("X")
      expect(new_board.win?).to eq true
    end

  end

end
