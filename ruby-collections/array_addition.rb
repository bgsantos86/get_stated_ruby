grocery_list = ["leite", "ovos", "pão"]

# Colocar item no final do array
grocery_list << "salames"
grocery_list.push("batatas fritas")
grocery_list += ["sorvete", "bolo"]

# Colocar item no ínicio do array
grocery_list.unshift("queijo")

puts grocery_list.inspect