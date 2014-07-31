require 'rspec'
require 'player'
require 'space'
require 'board'
require 'game'

describe :Space do

  describe :initialize do
    it 'initializes an empty space object' do
      new_space = Space.new(1,1)
      expect(new_space).to be_an_instance_of Space
    end
  end

  describe :set_mark do
    it 'should mark a space with a symbol' do
      new_space = Space.new(1,1)
      expect(new_space.marked_by).to eq(nil)
      new_space.set_mark("X")
      expect(new_space.marked_by).to eq("X")
    end
  end

end
