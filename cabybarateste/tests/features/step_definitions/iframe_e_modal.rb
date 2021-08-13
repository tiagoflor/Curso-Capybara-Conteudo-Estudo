Quando('entro no inframe e preencho os campos') do
    visit '/mudancadefoco/iframe'
   
    #mudando foco para o iframe
    within_frame('id_do_iframe') do #quando é within_frame pode passar ID puro sem hash
        #será feito as acoes dentro do iframe
       fill_in(id: 'first_name', with: 'Tiago') 
       fill_in(id: 'last_name', with: 'Silva') 
       sleep(2)
    end  
  end
  

  Quando('entro no modal e verifico o texto') do
    visit '/mudancadefoco/modal'
    find('a[href="#modal1"]').click


    within('#modal1') do #o within puro precisa usar ponto ou hash 
    texto = find('h4') 
        expect(texto.text).to eql 'Modal Teste'
        find('.modal-close').click
        sleep(2)
    end
  end

  