def ask(question, kind="string")
    print question + " "
    answer = gets.chomp
    answer = answer.to_i if kind == "number"
    return answer
end

def add_contact
    contact = {"name" => "", "phone_numbers" => []}
    contact["name"] = ask("Qual o nome da pessoa?")
    answer = ""
    while answer != "n"
        answer = ask("Você quer adicionar um número de telefone? (s/n)")
        if answer == "s"
            phone = ask("Entre um número de telefone: ")
            contact["phone_numbers"].push(phone)
        end
    end
    return contact
end

contact_list = []

answer = ""
while answer != "n"
    contact_list.push(add_contact())
    answer = ask("Adicionar outro contato?")
end

puts "----"

contact_list.each do |contact|
    puts "Nome: #{contact["name"]}."
    if contact["phone_numbers"].size > 0
        contact["phone_numbers"].each do |phone_numbers|
            puts "Telefone: #{phone_numbers}"
        end
    end
    puts "----\n"
end