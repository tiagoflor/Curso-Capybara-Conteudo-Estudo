class AjaxPage < SitePrism::Page
    set_url '/buscaelementos/botoes'

    #mapeando os elementos
    element :botao, '#teste'
    element :mensagem, '#div1'


    def clicar_botao #metodo clicar
        wait_for_botao #esse é o wait_for_elemento ele esta elemento mapeado acima chamado botao
        botao.click 
    end
    
end   