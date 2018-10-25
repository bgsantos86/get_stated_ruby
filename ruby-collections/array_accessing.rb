grocery_list = %w(leite ovos pães sorvetes tortas batatas)

# acessando o primeiro item
p grocery_list[0]
p grocery_list.at(0)
p grocery_list.first

# acessando o segundo item
p grocery_list[1]
p grocery_list.at(1)

# acessando o último item
p grocery_list.last
p grocery_list[-1]

# acessando o penúltimo item
p grocery_list[-2]

# incluíndo item no meio
grocery_list.insert(2, "linguiça")
p grocery_list

# Tamanho do array
p grocery_list.length
p grocery_list.count

# número de ocorrências
p grocery_list.count("ovos")
p grocery_list.push("ovos")
p grocery_list.count("ovos")

# confirmando se o item existe
p grocery_list.include?("ovos")
p grocery_list.include?("agua")