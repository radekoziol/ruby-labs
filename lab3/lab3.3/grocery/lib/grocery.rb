class Grocery

  @id_counter = 1

  def initialize
    @grocery = []
  end

  def length
    @grocery.length
  end

  def delete_client (client)
    @grocery.delete client
  end

  def << (client)
    @grocery.push client unless @grocery.include? client
  end

  def to_s
    print @grocery
  end

end

