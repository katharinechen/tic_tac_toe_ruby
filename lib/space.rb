class Space
  attr_reader :marked_by

  def initialize(x,y)
    @x = x
    @y = y
    @marked_by = nil
  end

  def set_mark(symbol)
    @marked_by = symbol
  end
end
