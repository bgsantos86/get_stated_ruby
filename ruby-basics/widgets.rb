
def ask(question)
    print question + " "
    # answer = gets
    # O último comando é retornado para o chamador
    # chomp retira os \n do retorno no método
    gets.chomp
end

def price(quantity)
    if quantity >= 100
        price_per_unit = 8
    elsif quantity >= 50 && quantity < 100
        price_per_unit = 9
    else
        price_per_unit = 10
    end
    quantity * price_per_unit
end

puts "Bem vindo a lojas de Widgets!"
answer = ask("Quantos widgets você quer comprar?")
number = answer.to_i
total = price(number)
puts "Para #{answer} widgets, seu total é: #{total}"