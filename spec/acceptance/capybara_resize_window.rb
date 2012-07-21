# encoding: utf-8

require 'acceptance/acceptance_helper'
 
describe 'El visitante accede a la web y', :type => :acceptance, :driver => :selenium do
 
  before do
    #Tiempo de espera: 10 segundos
    Capybara.default_wait_time = 10
  end
 
  it 'redimensionar a movil' do
    visit '/'
    resize :mobile
    human_check '¿Se ha redimensionado a móvil?'
  end
 
end
