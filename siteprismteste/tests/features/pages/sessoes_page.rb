class Sessao < SitePrism::Section
    element :youtube, 'a[href="https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA"]'  
    element :medium, 'a[href="https://medium.com/automa%C3%A7%C3%A3o-com-batista"]'
end

class Pagina < SitePrism::Page
    
    set_url '/buscaelementos/radioecheckbox'
    section :navibar, Sessao, '.nav-wrapper' #herda os elementos da sessao (youtube e medium)

end