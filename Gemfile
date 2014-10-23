source 'https://rubygems.org'

gem 'rails', '4.0.9'
gem "protected_attributes"

gem 'paperclip'
gem 'irbtools'
gem 'sqlite3'

gem 'hobo', :git => 'git://github.com/Hobo/hobo.git'  # web application meta framework from Github

gem 'jquery-rails'
gem "hobo_jquery"
gem "hobo_jquery_ui", "2.1.1"                         # JQuery UI asser handling
gem "jquery-ui-themes", "~> 0.0.4"                    # JQury Ui theming

gem "hobo_bootstrap", :git => 'git://github.com/informatom/hobo_bootstrap', :branch => "bootstrap3"
gem "hobo_bootstrap_ui", :git => 'git://github.com/informatom/hobo_bootstrap_ui', :branch => "bootstrap3" 
                                                      # additional Bootstrap features

gem "hobo_will_paginate"                              # pagination support
gem 'will_paginate-bootstrap'

gem "rspec-rails", ">= 2.5.0", :group => [:test, :development]

group :development do
  gem 'byebug'                                        # Command line debugger
  gem "quiet_assets"                                  # leaner log output
  gem "better_errors"                                 # Debug messages im Browser
  gem "binding_of_caller"                             # Repl for better_errors
end

group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara', "1.1.2"
  gem 'spork', :git => 'git://github.com/sporkrb/spork.git'
end
