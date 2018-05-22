load 'category'

module Category
  include Grocery

  def initialize(vat)
    @vat = vat
  end

end

class Product
  include Category

  def initialize(name,price,category)
    @id = rand(  10000)
    @name = name
    @price = price
    @category = category
  end


end