# classe começa com letra maiscula
#uma classe é composta por atributos e métodos e construtores

class ClassName
    #a mesma coisa que o get e set do java
    attr_accessor :nome 

    # só permite ler
    #attr_reader: nomeone

    #só permite escrever
    #attr_write:nomedois



    #metodo 
    #nome dele tem que ser tudo minusculo, se for composto precisa ter _   
    #entre as palavras

    def metodo
       puts 'corpo do metodo'
    end
    def metodo_composto
       puts 'corpo do metodo composto'
    end

    #mesma coisa do get
    #def nome
       # @nome
    #end
    
    #mesma coisa do set
    #def  nome=(nome)
     #   @nome = :nome
    #end

end

#instanciando classe 
objeto = ClassName.new
objeto.nome = 'Tiago'

puts objeto.nome


objeto.metodo
objeto.metodo_composto