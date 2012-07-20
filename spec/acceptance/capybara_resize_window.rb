# encoding: utf-8
 
require 'spec_helper'
 
describe 'El visitante accede a la web y', :type => :acceptance, :driver => :selenium do
 
  before do
    visit '/'
  end
 
  it 'en el contenido está la palabra Home' do
    Capybara.current_session.driver.browser.manage.window.resize_to(320,480)
    sleep 2
    page.should have_content('Home')
  end
 
end
