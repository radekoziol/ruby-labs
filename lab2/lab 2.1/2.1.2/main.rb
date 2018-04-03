load 'utils'

@input = <<GROCERY_LIST
a
b
c
dd
ee
fff
eee
asdasd
GROCERY_LIST


map = count_occurence(@input.split("\n"))

print_result map

