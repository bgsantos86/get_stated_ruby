hash = {"item"=>"Pão", "quantity"=>1, "marca"=>"nenhuma"}
# Listando chaves
p hash.keys

# Verificando a existencia de uma chave
p hash.key?("item")
p hash.has_key?("item")
p hash.member?("item")

# Acessando valor de uma chave
p hash.fetch("item")
p hash["item"]

# comparando Hashs
item = {"name"=>"Milk"}
puts hash == item
puts item == {"name"=>"Milk"}

# Adicionando valores
item.store("calories", 300)
p item