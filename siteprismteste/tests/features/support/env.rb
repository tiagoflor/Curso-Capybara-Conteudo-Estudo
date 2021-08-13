require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism' #necessário para usar no projeto
require_relactive 'page_helper.rb' #carreguei page helper

World(PageObjects) #deixar o modulo do page helper como global para usar no projeto inteiro
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com/'
    config.default_max_wait_time = 5
end
