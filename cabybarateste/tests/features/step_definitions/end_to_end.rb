Quando('eu cadastro o usuário') do
    visit '/users/new'
    fill_in(id: 'user_name', with:'Tiago')
    find('#user_lastname').set('S')
    fill_in(id: 'user_email', with:'teste@gmail.com')
    find('input[value="Criar"]').click
end
  
  Então('verifico se o usuário foi cadastrado.') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
  end
  
  Quando('edito um usuário.') do
    sleep(5)
    find('.btn.waves-light.blue').click 

    fill_in(id: 'user_name', with:'Tiago')
    find('#user_lastname').set('SF')
    fill_in(id: 'user_email', with:'teste@gmail.com')
    find('input[value="Criar"]').click
  end
  
  Então('verifico se o usuário foi editado.') do

    texto2 = find('#notice')
    expect(texto2.text).to eql 'Seu Usuário foi Atualizado!'

  end