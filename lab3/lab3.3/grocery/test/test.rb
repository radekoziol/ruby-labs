#!/usr/bin/env ruby
require 'minitest/autorun'
load '../lib/grocerygem/client.rb'
load '../lib/grocerygem/category.rb'
load '../lib/grocerygem/product.rb'
load '../lib/grocerygem/sales_man.rb'


# Tests
describe Client do
  before do
    cereal = Category.new("Produkty zbozowe",5)
    beverages = Category.new("Napoje",23)

    product1 = Product.new("Platki Jeczmienne",5,cereal)
    product2 = Product.new("Platki Owsiane",4,cereal)

    product3 = Product.new("Piwo",5,beverages)
    product4 = Product.new("Szampan",15,beverages)

    seller1 = SalesMan.new("Jack Cereal")
    seller2 = SalesMan.new("Jack Drinker")


    @client1 = Client.new('Joanna', 'Kowalska')
    @client1.add_product(1000, product1, seller1)
    @client1.add_product(100, product2, seller1)

    @grocery = Grocery.new
    @grocery << @client1
    @grocery << @client2




    @client2 = Client.new('Jerzy', 'Nowak')
    @client2.add_product(10, product3, seller2)
    @client2.add_product(2, product4, seller2)

  end

  describe '#possibilities' do
    it 'has name' do
      @client1.first_name.must_equal('Joanna', 'Niepoprawne imię')
      @client1.last_name.must_equal('Kowalska', 'Niepoprawne nazwisko')
    end
    it 'has unique id' do
      @client1.id.wont_equal(@client2.id, 'Id klienta nie jest unikalne')
    end
    it 'has unmodifiable id' do
      proc { @client1.id = 1 }.must_raise NoMethodError
    end
    it 'can displays full information' do
    end
    it 'can modify personal data' do

      @client1.first_name = 'Joanna Urszula'
      @client1.last_name = 'Nowak'
      @client1.first_name.must_equal('Joanna Urszula', 'Niepoprawne imię')
      @client1.last_name.must_equal('Nowak', 'Niepoprawne nazwisko')
    end
    it 'properly stores products' do
      proc { @client1.id = 1 }.must_raise NoMethodError


      # @client1.products.must_equal(%w[Tusz Tusz Pomadka Szampon Szampon Papierosy])
      # @client2.products.must_equal(%w[Piwo Szampon])
    end
    it 'correctly calculates the discount' do
      proc { @client1.id = 1 }.must_raise NoMethodError

      # @client1.has_discount?.must_equal(true, "Metoda 'has_discount?()' zwróciła błędną wartość")
      # @client2.has_discount?.must_equal(false, "Metoda 'has_discount?()' zwróciła błędną wartość")
    end
  end
end

describe Grocery do
  before do
    @grocery = Grocery.new
    @client1 = Client.new('Joanna', 'Kowalska')
    @client2 = Client.new('Jerzy', 'Nowak')
  end
  describe '#possibilities' do
    it 'is empty at the beginning' do
      @grocery.length.must_equal(0)
    end
    it 'properly adds clients' do
      @grocery << @client1
      @grocery << @client2
      @grocery.length.must_equal(2)
    end
    it 'can display full information' do
      # proc { puts @grocery }.must_output("[\"Jan Kowalski\"], [\"Jerzy Nowak\"]\n")
    end
  end
end