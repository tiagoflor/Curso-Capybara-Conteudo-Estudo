class MapeandoElementoPage < SitePrism::Page
    set_url '/users/new'

    #mapenado os elementos
    element :nome,'#user_name'  # element é semelhante o find()
    #por padrao o site prism busca por CSS

    #criando um metodo e settando valores
    def preencher    
        nome.set 'Tiago'
    end

end