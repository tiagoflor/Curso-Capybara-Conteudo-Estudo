Dado('que eu estou na tela de dragdrop') do
    visit '/iteracoes/draganddrop'
  end
  
  Quando('movo dragdrop') do
    @pimeiro_elemento = find('#winston')
    @segundo_elemento = find('#dropzone')

    @pimeiro_elemento.drag_to((@segundo_elemento))
    sleep(4)
  end