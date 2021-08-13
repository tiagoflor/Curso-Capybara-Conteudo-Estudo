Quando('preencho os campos.') do
        @pagina_iframe = PaginaPadrao.new
        @pagina_iframe.load


    @pagina_iframe.preencher_campo do |iframe| # rodando a instancia da classe e jogado dentro da  variavel |iframe|
    iframe.nome.set 'Tiago'
    iframe.ultimo_nome.set 'Silva'
    end
    sleep(4)
  end