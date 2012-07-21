require 'spec_helper'

def human_check(mensaje)
  page.execute_script("$('#mensajito').html('#{mensaje}');");
  page.should have_content('Txatxi')
end

def resize(size)
  if size == :mobile
    Capybara.current_session.driver.browser.manage.window.resize_to(320,600)
  elsif size == :bigmobile
    Capybara.current_session.driver.browser.manage.window.resize_to(700,600)
  elsif size == :netbook
    Capybara.current_session.driver.browser.manage.window.resize_to(1024,700)
  elsif size == :desktop
    Capybara.current_session.driver.browser.manage.window.resize_to(1280,900)
  end
end

def human_check_sizes(mensaje)
  resize :desktop
  human_check mensaje
  resize :netbook
  human_check mensaje
  resize :bigmobile
  human_check mensaje
  resize :mobile
  human_check mensaje
end

def login
  visit '/login'
  fill_in 'login', :with => 'tecnicos@unoycero.com'
  fill_in 'password', :with => 'RobotRobot'
  click_button 'Log in'
end
