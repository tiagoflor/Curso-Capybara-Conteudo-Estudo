Quando('clico no botao.') do
    @ajax = AjaxPage.new
    @ajax.load
    
    @ajax.clicar_botao # usando metodo clicar botao do AjaxPage
  end
  
  Entao('verifico se apareceu') do
    @ajax.wait_for_mensagem #chamada o metodo e passa o elemento
    expect(@ajax.mensagem.text).to eql 'Você Clicou no botão!'
  end