def create_list
    print "Qual o nome da lista? "
    name = gets.chomp

    hash = { "name"=> name, "itens"=> Array.new }

    return hash
end

def print_separator(character="-")
    puts character * 80
end

def print_list(list)
    puts "\n\tLista: #{list['name']}"
    print_separator()

    list["itens"].each do |item|
        puts "\tItem: " + item['name'] + "\t\t\t" +
             "Quantidade: " + item['quantity'].to_s
    end
    print_separator()
end

def add_item_list
    print "Qual item quer inserir? "
    item_name = gets.chomp
    print "Qual a quantidade quer incluir? "
    quantity = gets.chomp.to_i

    hash = {"name"=> item_name, "quantity"=> quantity}
    return hash
end

list = create_list()
puts "Ótimo! Adicione alguns itens a sua lista: "
for counter in 0..2
    list["itens"].push(add_item_list())
end
puts "Aqui está a sua lista!\n"
print_list(list)