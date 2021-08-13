#Super serve basicamente para invocar o método 
#correspondente da classe mãe

class ClasseMae
    def correr
        puts 'A mae corre'
    end
end

class ClasseFilha < ClasseMae
    def correr
        puts super
        puts "cancel"
    end
    
end

#quando chamar o metodo correr primeiro imprime o metodo da classe
#mae e depois o metodo da classe filha

objeto = ClasseFilha.new
objeto.correr