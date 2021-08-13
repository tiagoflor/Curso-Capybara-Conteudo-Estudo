#require 'capybara/cucumber'

require'capybara'  #aula trabalhando end to end ,
require 'capybara/dsl' #aula trabalhando end to end ,
require 'capybara/rspec/matchers' #aula trabalhando end to end
require 'selenium-webdriver'

#setar como globais o capybara para trabalhar com end to end
World(Capybara::DSL) #aula trabalhando end to end
World(Capybara::RSpecMatchers) #aula trabalhando end to end


Capybara.configure do |config|
    #selenium(firefox default) selenium_chrome  selenium_chrome_healess(CI)
    config.default_driver = :selenium_chrome 
    config.app_host = 'https://automacaocombatista.herokuapp.com' 
    config.default_max_wait_time = 5 

end