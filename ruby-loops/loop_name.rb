def get_name
    name = ""
    loop do
        print "Entre com seu nome (mínimo de 2 caractéres, sem números): "
        name = gets.chomp
        if name.length >= 2 && !name.index(/\d/)
            break
        else
            puts "O nome deve ser maior do que 2 caracteres e não ser númerico."
        end
    end
    return name
end

name = get_name()
puts "Hi #{name}."