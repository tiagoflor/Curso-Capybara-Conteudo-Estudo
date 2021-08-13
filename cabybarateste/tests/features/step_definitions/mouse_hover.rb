Quando('seleciono o mouse hover') do
    visit '/iteracoes/mousehover'
    find( '.activator').hover   #.activator => usando o . vc diz que o elemento é uma classe
    sleep(3)

    #utilizando hover.click
    visit '/buscaelementos/botoes'
    find('#teste').hover.click
    sleep(3)
  end