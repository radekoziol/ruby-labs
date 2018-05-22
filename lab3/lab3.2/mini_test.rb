require 'minitest/autorun'
require './main'

describe Odbiorca do
  before do
    @odbiorca = Odbiorca.new([])
    @odbiorca1 = Odbiorca.new([1,2,3])
    @odbiorca2 = Odbiorca.new([1,2,3,4,5,6,7,8,9,10])
    @odbiorca3 = Odbiorca.new([1,3,9])
  end

  describe "#ilosc_liczb_parzystych" do
    it "zwraca liczbe parzystych elementow w tablicy" do
      @odbiorca.ilosc_liczb_parzystych.must_equal 0
      @odbiorca1.ilosc_liczb_parzystych.must_equal 1
      @odbiorca2.ilosc_liczb_parzystych.must_equal 5
      @odbiorca3.ilosc_liczb_parzystych.must_equal 0
    end
  end
end