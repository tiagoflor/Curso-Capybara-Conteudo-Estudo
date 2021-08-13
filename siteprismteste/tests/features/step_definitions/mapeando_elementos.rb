Quando('preencho o formulário.') do
    @mapeando = MapeandoElementoPage.new  #instanciano o page

    @mapeando.load #carregar url mapeada no page
   @mapeando.preencher #chamando metodo preencher para executar acao nome.set

    sleep(4)
  
    #chamando só o elemento
    #@mapeando.nome.set 'Tiago'
    

    #exemplo da aula 50, ao invés de ir criando tudo de novo só
    #colocar no page helper
    #home.load
    #home.preencher

end

#o que faziamos nos steps com fill_in, find, agora encapsulamos e usamos o page object
#agora no steps chamamos apenas os elementos mapeados no objeto