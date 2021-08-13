Quando('eu marco um checkbox e um radiobox') do
    visit '/buscaelementos/radioecheckbox'
    find('label[for="white"]').click
    check('purple', allow_label_click: true) #por ser um input o purple e sua ação fica dentro dele no LABEL, precisa usar um elemento invisivel e utiliza o alow_label_click
    uncheck('purple', allow_label_click: true) #desmarca uma opcao
    choose('red',allow_label_click: true)#marcar um checkbox

    sleep(5)
  end