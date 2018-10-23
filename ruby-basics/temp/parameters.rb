def add(first, second)
    return first + second
end

def subtr(first, second)
    # a última expressão da função será o que será retornado. Não é necessário chamar o return.
    first - second
end

total = add(100, 50) # 150
puts total
remaining  = subtr(75, 25) #50
puts remaining
puts add 3, 4 #7
puts subtr 10, 5 #5
puts add(add(1, 2), 4) #7
puts add(3, subtr(11, 7)) #7