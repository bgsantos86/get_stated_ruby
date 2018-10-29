def get_name(prompt, &block)
    print prompt + ": "
    name = gets.chomp
    print "Age: "
    age = gets.chomp
    # yield name  # repassa a variavel como argumento para o block
    block.call(name, age) # chama o bloco e passa a variavel
    name # também retorna a variavel para o my_name
end

my_name = get_name("Qual o seu nome") do |name, age|            # recebe o argumento do metodo, não prescisa ser  mesmo nome.
    puts "Seu nome é legal #{name}. Age: #{age}"
    # name -> retorna o valor para variavel my_name.
end

puts "Meu nome: #{my_name}."