#é a capacidade de um objeto poder ter várias formas
#CUIDADO, não quer dizer que o objeto fica se transformando, muito pelo contrario objeto nasce e morre com mesmo tipo
#o que muda é a maneira que nos referimos a ele


class Cachorro
    def latir
        puts 'au au au'
    end
end

class CachorroGrande
    def latir
        puts 'AU AU '
    end
end

class Pessoa
    def agarra_cachorro(cachorro)
        cachorro.latir
    end 
end


#criando instancias
c1 = Cachorro.new
c2 = CachorroGrande.new

p = Pessoa.new
p.agarra_cachorro(c1) #referenciou a classe e chamou metodo de uma classe abstrata
p.agarra_cachorro(c2)
