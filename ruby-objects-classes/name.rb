class Name

    # attr_reader -> Cria um método que retorna o atributo (get)
    attr_accessor :titulo   #Get e Set juntos
    attr_reader :primeiro_nome, :ultimo_nome    #get
    attr_writer :primeiro_nome, :ultimo_nome    #set

    def initialize(titulo, primeiro_nome, nome_meio, ultimo_nome)
        @titulo = titulo
        @primeiro_nome = primeiro_nome
        @nome_meio = nome_meio
        @ultimo_nome = ultimo_nome
    end

    def nome_meio
        @nome_meio
    end

    def nome_meio=(novo_nome_meio)
        @nome_meio = novo_nome_meio
    end

    def nome_completo
        @primeiro_nome + " " + @nome_meio + " " + @ultimo_nome
    end

    def nome_com_titulo
        @titulo + " " + nome_completo()
    end

    def to_s
        # sobrepõe a classe
        nome_com_titulo
    end

end

name = Name.new("Mr.", "Bruno", "G.", "Santos")
puts name.titulo + " " + name.nome_completo
puts name.nome_com_titulo


puts "Antigo titulo #{name.titulo}"
puts name.titulo = "Dr"
puts "Novo titulo #{name.titulo}"

puts "Antigo nome #{name.titulo}"
puts name.titulo = "Dr"
puts "Novo titulo #{name.titulo}"