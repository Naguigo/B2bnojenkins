require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'bundler'
require 'site_prism'
require_relative 'helper.rb'



BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(PageObjects)
World(Helper)



# Capybara.register_driver :selenium do |app|

#    if BROWSER.eql?('chrome')
#        Capybara::Selenium::Driver.new(app, :browser => :chrome)
#    elsif BROWSER.eql?('chrome_headless')
#     Capybara::Selenium::Driver.new(app, :browser => :chrome)
#    # desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
#     # 'chromeOptions' => {'args' =>['--headless', 'desable-gpu']}
    
#     #) 
#     #)
    
    

#    elsif BROWSER.eql?('firefox')
#        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
#    elsif BROWSER.eql?('safari')
#        Capybara::Selenium::Driver.new(app, :browser => :safari)
#    elsif BROWSER.eql?('ie')
#        Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
#    elsif BROWSER.eql?('poltergeister')
#        Capybara::Selenium::Driver.new(app, :browser => :poltergeister)
#    end

# end

######################### comandos para Chrome_Headless###################################
Capybara.register_driver :selenium_chrome_headless do |app|
    Capybara::Selenium::Driver.load_selenium
    browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
      opts.args << '--headless'
      opts.args << '--disable-gpu'
      opts.args << '--window-size=2500,2500' if Gem.win_platform?
      opts.args << "--no-sandbox"
      opts.args << '--disable-site-isolation-trials'      
   end
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options) 
  #Capybara.javascript_driver = :selenium_chrome_headless
end
##########################################################################################


Capybara.configure do |config|
   config.default_driver = :selenium_chrome_headless          #selenium_chrome / selenium_chrome_headless (modo invisivel)
   config.app_host = CONFIG['url_padrao'] 
   CONFIG['user']
   CONFIG['senha']
   #config.app_host = 'http://qualidade.snd.com.br'
   config.default_max_wait_time = 20
end 

Capybara.page.driver.browser.manage.window.maximize