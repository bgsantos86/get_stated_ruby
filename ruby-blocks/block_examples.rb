# com apenas 1 linha usar {}
3.times { puts "Hello, world!" }


# se tem mais de uma linha deve-se usar do-end
3.times do
    puts "Hello, world!" 
    puts "Second line."
    # return true - não pode retornar nada
    true # a última linha geralmente representa o retorno
end