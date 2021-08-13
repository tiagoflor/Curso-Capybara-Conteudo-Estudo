Quando('eu entro na janela e verifico a mensagem') do
    visit '/mudancadefoco/janela'

    #janela recebe uma janeça que foi aberta porum link
    janela = window_opened_by do 
        click_link 'Clique aqui' #mapeando pelo texto (essa janela está recebendo uma janela que será aberta com um link)
    end

    #mudando de foco para a janela
    within_window janela do
        #verifico se minha url -e igual a url que quero
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    
        @mensagem = find('.red-text.text-darken-1.center')

        #verificando o texto
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        janela.close
        sleep(3)
    end



    #segunda opcao

    click_link 'Clique aqui'
    #muda a primeira aba para ultima aba daquela janela
    switch_to_window windows.last

    expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        #verificando o texto
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        windows.last.close
        sleep(3)
     
end
 
  Quando('eu entro no alert e verifico faco a acao') do
    visit '/mudancadefoco/alert'
   
    #find('button[onclick="jsAlert()"]').click #button passando valor dentro das []
    #sleep(3)
    #page.accept_alert
    #sleep(3)
   
    #find('button[onclick="jsConfirm()"]').click 
    #sleep(3)
    #page.dismiss_confirm
    #sleep(3)

    #find('button[onclick="jsPrompt()"]').click
    #sleep(3)
    #page.accept_prompt(with: 'Tiago teste')  #usa-se para preencher um alert
    #sleep(3)


    find('button[onclick="jsPrompt()"]').click
    page.dismiss_prompt(with: 'Tiago teste')  
    
   end