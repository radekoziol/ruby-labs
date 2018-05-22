
class Client
  include Grocery

  # Initialize our class variables
  @id = 0


  def initialize(first_name,last_name)
    @first_name, @last_name = first_name, last_name
    @products = []
    @id = rand(10000)
    @rabat = 0
  end

  def add_product(product)
    @products.push(product)
  end

  def products
    print @products
  end

  def has_discount?
    if @products.length >= 5
      @rabat = 0.1
    end
    @rabat
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end


  def first_name=(value)
    @first_name = value
  end

  def last_name=(value)
    @last_name = value
  end

  def to_s
    print @first_name.to_s + " "  + @last_name.to_s + "\n\nRabat="
    has_discount?
    print (@rabat*100).to_i.to_s  + "%\n\n"
    print @products.each{ |x| puts x }
    print "\n"
    sum = @products.length*10
    sum = sum*(1-@rabat)
    print "\n\nSuma=" + sum.to_i.to_s + "\n"
  end

  # Joanna Kowalska\n\nRabat=10%\n\nTusz\
  # nTusz\nPomadka\nSzampon\nSzampon\nPapierosy\n\nSuma=57\n
  attr_reader :id

end