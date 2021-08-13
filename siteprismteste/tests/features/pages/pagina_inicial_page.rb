class PaginaInicial < SitePrism::Page
    #Toda vez que instanciar essa classe, ele setara essa url
    set_url '/treinamento/home' #já está setado minha url padrao, por isso nao está completo o caminho

    #importante: só é settado 1 url para cada page object
    #page object é para encapsular uma determinada página e os elementos dela
    
end