load 'lib/client.rb'

@client1 = Client.new('Joanna', 'Kowalska')
@client1.add_product('Tusz')
@client1.add_product('Tusz')
@client1.add_product('Pomadka')
@client1.add_product('Szampon')
@client1.add_product('Szampon')
@client1.add_product('Papierosy')
######################
# @client2 = Client.new('Jerzy', 'Nowak')
# @client2.add_product('Piwo')
# @client2.add_product('Szampon')
# @client1.last_name = 'Nowak'

@client1.to_s