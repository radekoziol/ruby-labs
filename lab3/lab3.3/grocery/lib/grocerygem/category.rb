class Category
  # include Grocery

  def initialize(name,vat)
    @name = name
    @vat = vat
  end

  def to_s
    @name
  end

end