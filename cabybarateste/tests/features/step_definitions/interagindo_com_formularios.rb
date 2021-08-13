Quando('eu faço cadastro') do
    visit '/users/new'
    fill_in(id: 'user_name', with:'Tiago')
    find('#user_lastname').set('Flor')
    find('#user_email').send_keys('tiagoxxsilva@gmail.com')
    fill_in(id: 'user_address', with:'Adail R')
    find('#user_university').set('Estácio de Sá')
    find('#user_profile').send_keys('QA')
    find('#user_gender').set(' Masculino')
    find('#user_age').send_keys('27')
    find('input[value="Criar"]').click # verificar CCS Criar e clica nele para salvar
    
  end
  
  Entao('verifico se fui cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
    sleep(20)    
  end