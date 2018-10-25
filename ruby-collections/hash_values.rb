hash = {"item"=>"Pão", "quantity"=>1, "marca"=>"nenhuma"}

# verificando valores
p hash.values
p hash.has_value?("Pão")
p hash.has_value?(1)
p hash.value?(1)
p hash.values_at("item", "quantity")