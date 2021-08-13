Quando('acesso a url') do
    @home = PaginaInicial.new #instanciando a classe e jogou na variável home
    @home.load #metodo que carrega a url settada no page object
    
  end
  
  Então('verifico se estou na página inicial') do
    #dentro da page se a url corrente é a entre parenteses é verdadeira
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
    sleep(3)
    end