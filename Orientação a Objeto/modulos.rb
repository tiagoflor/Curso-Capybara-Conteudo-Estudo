#módulos são uma maneira de agrupar métodos, classes e constantes

module ModuloNome
    #serve para agrupar classes
    #serve para agrupar constantes 
    #serve para agrupar métodos

    #ele é muito parecido com classe
    #ele não pode ser instanciado
    #modulo nao pode ser herdado
    
    def metodo_padrao
        puts 'eu sou um modulo'
    end
end

class ClassName
    include ModuloNome #imbutir modulo dentro da classe , só assim para instanciar um modulo
end

objeto = ClassName.new
objeto.metodo_padrao
