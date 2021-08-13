Quando('clico no elemento da sessao.') do
    @pagina = Pagina.new
    @pagina.load


    #chamando a navibar
    @pagina.navibar.medium.click #ele busca navibar que herda os elementos do medium e abrir o link
    #@pagina.navibar.youtube.click #ele busca navibar que herda os elementos do youtube e abrir o link
  end