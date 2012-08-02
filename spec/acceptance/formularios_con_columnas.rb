# encoding: utf-8

require 'acceptance_helper'
 
describe 'El visitante puede utilizar formularios en columnas fácilmente', :type => :acceptance, :driver => :selenium do
 
  before do
    #Tiempo de espera: 10 segundos
    Capybara.default_wait_time = 10
    login
  end
 
#  #WORKING!!
#  it 'formularios sin aside' do
#    visit '/stories/new'
#    human_check_sizes '¿Se ve bien con una columna?'
#  
#    visit '/stories/new_2_column'
#    human_check_sizes '¿Se ve bien con dos columnas?'
#    
#    visit '/stories/new_3_column'
#    human_check_sizes '¿Se ve bien con tres columnas?'
#  end
#  
#  
#  #WORKING!!
#  it 'formularios con aside' do
#    visit '/stories/new_aside'
#    human_check_sizes '¿Se ve bien el aside con una columna?'
#  
#    visit '/stories/new_2_column_aside'
#    human_check_sizes '¿Se ve bien el aside con dos columnas?'
#    
#    visit '/stories/new_3_column_aside'
#    human_check_sizes '¿Se ve bien el aside con tres columnas?'
#  end
#  
#  #WORKING!!
#  # Formularios con un campo doble de largo (ocupa dos columnas)
#  it 'formularios con campos dobles' do
#    visit '/stories/new_double_size_field'
#    human_check_sizes '¿Se ve bien el campo doble de largo?'
#  end
  
  
  # Formularios con un textarea
  it 'formularios con un textarea' do
    visit '/stories/new_with_textarea'
    human_check_sizes '¿Se ve bien el campo doble de largo?'
  end
  
  # Show 1,2,3 columnas
  
  
  # Show con aside
 
end
