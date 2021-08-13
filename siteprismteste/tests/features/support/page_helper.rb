Dir[File.join(File.dirname(_File_),'../pages/*_page.rb')].each{|file| require file}
#fazendo join no arquivo pages em  todos _page.rb e adicionar 
#dentro da variavel file e dando require nele

module PageObjects
    def home
    #instanciando a classe e com isso nao precisa mais
    #ficar sempre chamado ela

        @home ||= MapeandoElementoPage.new
        
    end
end
