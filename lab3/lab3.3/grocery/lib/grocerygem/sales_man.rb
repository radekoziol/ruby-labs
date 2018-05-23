class SalesMan

  def initialize(name)
    @name = name
    @products_sold = []
    @clients_colab = []
  end

  def add_new_transaction(client, product)
    @products_sold.push product unless @products_sold.include?(product)
    @clients_colab.push client unless @clients_colab.include?(client)
  end


  def to_s
    @name
  end
end