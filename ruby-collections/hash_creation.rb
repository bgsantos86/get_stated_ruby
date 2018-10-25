# Criando um Hash vazio
item = Hash.new
item = {}

# Criando Hash com um valor
item = {"name" => "Bruno", "quantity" => 1}
p item["name"]

# Adicionando um valor ao Hash
item[1] = "pode ser um inteiro a chave"
item["marca"] = "nike"
item[:name] = "Bruno"
p item

# Deletando um item - delete(chave)
item.delete(1)
p item

# criando com simbolos
item = {name: "Bruno", quantity: 1}
p item