# @author Radoslaw Koziol <email@dom.com>
class Odbiorca

  @tab = [1, 2, 3]

  def to_s
    "Wywołano metodę 'to_s()'"
  end

  def inspect
    "Wywołano metodę 'inspect()'"
  end

  def getar
    print @tab
  end

  def initialize(tab)
    @tab = tab
    puts "Wywołano metodę 'initialize()'"
  end

  # Zwraca liczbe parzystych elementow w tablicy
  # @param none
  # @return liczba parzystych elementow w tablicy
  def ilosc_liczb_parzystych()
    @tab.select(&:even?).size
  end

  # Tworzy losowa n elem tablice o elementach z prz 1..m
  # @param n ilosc elementow
  # @param m zakres liczby (0-m)
  # @return liczba parzystych elementow w tablicy
  def utworz_tablice!(n, m)
    @tab = utworz_tablice n, m
  end

  def utworz_tablice(n, m)
    n.times.map {Random.rand(m)}
  end

  def komunikat
    puts "metoda instancyjna tab : #{@tab}"
  end

  def self.komunikat
    puts "metoda klasowa tab : #{@tab}"
  end
end

#########################
Odbiorca.komunikat
Odbiorca.send('komunikat')
odbiorca = Odbiorca.new([4, 5, 6])
odbiorca.komunikat
odbiorca.send('komunikat')
puts odbiorca
p odbiorca

puts "\n"

odbiorca.utworz_tablice! 12,12
odbiorca.getar
print "\n"
puts odbiorca.ilosc_liczb_parzystych
