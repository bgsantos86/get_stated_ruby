# Formas de criar um array
grocery_list = Array.new

# Array com 3 itens (JSON, JSON, JSON)
grocery_list = Array.new(3, "JSON")

# Também é possível criar com conchetes em brancos ou passando argumentos
grocery_list = []
grocery_list = ["milk", "eggs", "bread"]

# Usando o %w pode passar paramêtros sem aspas duplas como string
grocery_list = %w(milk eggs bread)

# com %W posse fazer a interpolação
item = “milk”
grocery_list = %W(#{item} eggs bread)



