require_relative 'category.rb'

class Product
  # include Category

  def initialize(name,price,category)
    @id = rand(  10000)
    @name = name
    @price = price
    @category = category
  end

  def category
    @category
  end

  def category=(new)
    @category = new
  end

  def price
    @price
  end

  def price=(new)
    @price = new
  end


  def to_s
    @name + "(" + @category.to_s + ")"
  end

end