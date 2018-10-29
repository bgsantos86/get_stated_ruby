def get_name
    print "Qual o seu nome? "
    name = gets.chomp
    yield name  # repassa a variavel como argumento para o block
    name # também retorna a variavel para o my_name
end

my_name = get_name do |name|            # recebe o argumento do metodo, não prescisa ser  mesmo nome.
    puts "Seu nome é legal #{name}."
    # name -> retorna o valor para variavel my_name.
end

puts "Meu nome: #{my_name}."