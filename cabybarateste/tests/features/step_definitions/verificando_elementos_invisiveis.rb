Quando('clico em um botao') do
    visit '/buscaelementos/botoes'
    find('#teste').click
end

Entao('verifico se o texto desapareceu na tela com sucesso') do
    @texto = find('#div1')
    expect(@texto.text).to eql 'Você Clicou no Botão!'
    
    #todos fazem a mesma coisa, o que muda é a forma de chamar
    page.has_text?('Você Clicou no Botão!')#para buscar um texto
    have_text('Você Clicou no Botão!')
    
    #teste dos elementos invisiveis
    find('#teste').click #clicar para desaparece os elemento
    sleep(3)
    #assert_no_text(text, 'Você Clicou no Botão!')
    have_no_text?('Você Clicou no Botão!')
  end