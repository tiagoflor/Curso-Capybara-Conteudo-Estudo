class MapeandoListas < SitePrism::Page
    set_url '/buscaelementos/table'

    elements :lista, 'tr > td' #lista recebe elementos do tr ao th no site / elementos é para mapear
      
end