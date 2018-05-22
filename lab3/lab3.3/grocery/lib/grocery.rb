module Grocery

  @id_counter = 1

  def initialize
    @grocery = []
  end

  def length
    @grocery.length
  end

  def << (val)
    @grocery.push(val)
  end

  def to_s
    print @grocery
  end

end

