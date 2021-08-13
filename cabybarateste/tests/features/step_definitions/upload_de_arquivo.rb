Quando('eu faco um upload de arquivo') do
    visit '/outros/uploaddearquivos'
    #attach_file('nome do elemento', 'caminho onde se encontra o arquivo', caso elemento seja invisivel colocar true para passa-lo como visivel)
    #attach_file('upload', 'C:\\Users\\Tiago\\Desktop\\QA Engenieer\\CursoQA-Ruby\\cabybarateste\\tests\\feature\\imagem.png', make_visible: true) #windows usa \\ e não \

    #outra forma
    @foto = File.join(Dir.pwd, 'features\\imagem.png') #file.join, contatena dir.pwd(onde esse diz o diretorio que estou) com feature\\imagem.png
    attach_file('upload',@foto, make_visible: true)
    sleep(4)

end



