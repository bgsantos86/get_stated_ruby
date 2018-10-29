def get_name(prompt, &block)
    if block_given?
        print prompt + ": "
        name = gets.chomp
        print "Age: "
        age = gets.chomp
        yield name, age
        name
    else
        puts "No block given!"
    end
end

my_name = get_name("Qual o seu nome") #do |name, age|
    #puts "Seu nome é legal #{name}. Age: #{age}"
#end

puts "Meu nome: #{my_name}."