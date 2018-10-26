random_number = Random.new.rand(5)

loop do
    print "Adivinhe o número entre 0 e 5 (digite `e` para sair). "
    answer = gets.chomp
    if answer == "e"
        puts "saído do programa...O número era #{random_number}"
        break
    else
        if answer.to_i == random_number
            puts "você acertou!!"
            break
        else
            puts "try again!"
        end
    end
end