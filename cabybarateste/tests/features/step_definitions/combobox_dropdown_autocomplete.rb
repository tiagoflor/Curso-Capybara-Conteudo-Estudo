Quando('interajo com dropdown e select') do
    visit '/buscaelementos/dropdowneselect'
    find('.btn.dropdown-button').click #dropdown
    find('#dropdown3').click #dropdown
    select 'Chrome', from: 'dropdown' #seleciona a opcao do select dp brownser favorito
    
    #outra forma de usar o select
    find('option[value="2"]').select_option #clica direto na opção que vc mapeou
    sleep(5)
  end
  
  Quando('preencho o autocomplete') do
    visit '/widgets/autocomplete' #autocomplete
    find('#autocomplete-input').set 'Rio de Jane'
    find('ul', text:'Rio de Janeiro').click
    sleep(5)
end