module Lib

  def delete_product(list, name, price, category)
    list.delete(new Product(name, price, category))
  end

  def get_discount(products)
    rabat = 0
    sum = 0

    products.each do |key, value|
      sum += key.price * products[key]
    end

    if sum >= 1000
      rabat = 0.1
    end

    rabat
  end

end