grocery_list = %w(leite ovos pães sorvetes tortas batatas)

p grocery_list

# Removendo o último item
last_item = grocery_list.pop
p grocery_list
p last_item

# Removendo o primeiro item
first_item = grocery_list.shift
p grocery_list
p first_item

# Capturando os dois últimos itens (não modifica o array)
drop_two_itens = grocery_list.drop(2)
p drop_two_itens
p grocery_list

# Capturando os três primeiros itens do array
first_three_itens = grocery_list.slice(0, 3)
p first_three_itens
p grocery_list

# criando outra lista
new_list = grocery_list.slice(1, 2)
p new_list