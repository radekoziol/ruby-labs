require_relative 'grocery.rb'
require_relative 'lib.rb'

class Client
  include Lib

  @@client_n = 0

  def initialize(first_name, last_name)
    @first_name, @last_name = first_name, last_name
    @products = Hash.new
    @sellers = Hash.new
    @id = @@client_n
    @@client_n += 1
  end


  def add_product(quantity, product, seller)
    @products[product] = quantity
    @sellers[product] = seller
    seller.add_new_transaction(product, self)
  end

  def products
    @products
  end

  def first_name
    @first_name
  end

  def first_name=(value)
    @first_name = value
  end

  def last_name
    @last_name
  end

  def last_name=(value)
    @last_name = value
  end

  def to_s
    puts '************************'
    print 'Klient: ' + @first_name.to_s + " " + @last_name.to_s + "\n"
    print "Produkty: "
    products.each do |key, value|
      print key.to_s  + ' x' + value.to_s + ' (' +
          'Seller: '+ @sellers[key].to_s + '), '
    end

    rabat = get_discount(@products)
    puts "\nRabat: " + rabat.to_s
  end


  attr_reader :id

end