Quando('clico no botao') do
    visit '/buscaelementos/botoes'
    find('#teste').click
  end
  
  Entao('verifico se o texto apareceu na tela com sucesso') do
    #@texto = find('#div1')
    #expect(@texto.text).to eql 'Você Clicou no Botão!'
    
    #todos fazem a mesma coisa, o que muda é a forma de chamar
    #page.assert_text(text,'Você Clicou no Botão!').to eql true  verififcar porque está dando erro
    page.has_text?('Você Clicou no Botão!')#para buscar um texto
    have_text('Você Clicou no Botão!')
  end