Quando('mapeio uma tabela.') do
  @lista_de_elementos = MapeandoListas.new 

  @lista_de_elementos.load #carregar a página
    sleep(2)
    puts @lista_de_elementos.lista.size
    puts @lista_de_elementos.lista[0].text #[[0] => posição do primeiro elemento do array , no caso o arroz

    expect(@lista_de_elementos.lista.size).to eql 24 #Quantidade de linhas e colunas da lista

  #para cada elementos da lista, vai imprimir na tela
 # @lista_de_elementos.lista.each do |listas| #criado variavel listas para receber valores do mapeamento
 #   puts listas.text
 # end
  
end