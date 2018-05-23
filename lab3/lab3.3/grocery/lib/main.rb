load 'lib/client.rb'
load 'lib/category.rb'
load 'lib/product.rb'
load 'lib/sales_man.rb'

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

@client1.to_s

@client2.to_s
