Quando('eu uso um script') do
    visit '/outros/scroll'
    #executa comando jquery e jscript
    page.execute_script("window.scrollBy(0,1500)") # (0,1500) => (direita ou esquerda, baixo ou cima)


    #exemplo de executar umas acoes e receba um resultado
    @result = page.evaluate_script('4 + 4');
    puts result
    sleep(5)

  end