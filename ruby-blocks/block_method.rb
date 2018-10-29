def block_method
    puts "Esta é a primeira linha do bloco!"
    yield   # chama o código dentro do bloco chamador para ser executado.
    yield   # se chamar duas vezes executa duas vezes.
    puts "Linha depois dos yield."
end

block_method do
    puts "Esto é executado a partir do bloco."
end

# block_method - se chamar o metodo não sendo um block e dentro do metódo tendo um yield dará um erro.