source 'https://rubygems.org'

gem 'rails', '4.0.8'
gem "protected_attributes"

gem 'paperclip'
gem 'irbtools'
gem 'sqlite3'

gem 'hobo', :git => 'git://github.com/Hobo/hobo.git'  # web application meta framework from Github

gem 'jquery-rails'
gem "hobo_jquery"
gem "hobo_jquery_ui", "2.1.1"                         # JQuery UI asser handling
gem "jquery-ui-themes", "~> 0.0.4"                    # JQury Ui theming

gem "hobo_bootstrap", :path => "/var/rails/mercator/vendor/gems/hobo_bootstrap"
gem "hobo_bootstrap_ui", "2.1.0"                      # additional Bootstrap features

gem "hobo_will_paginate"                              # pagination support
gem 'will_paginate-bootstrap'

gem "rspec-rails", ">= 2.5.0", :group => [:test, :development]

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
