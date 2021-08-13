#overrinding é quando a classe filha sobreenscreve a implementação da classe mãe


class ClasseMae
    def correr
        puts 'A mãe Corre'
    end
end


class ClasseFilha < ClasseMae
    def correr
        puts 'A filha corre'
    end 
end


objeto = ClasseFilha.new
objeto.correr


