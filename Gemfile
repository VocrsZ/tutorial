source 'https://rubygems.org'
ruby '2.3.1'
#ruby-gemset=rails421


gem 'rails', '4.2.1' 
gem 'pg', '0.15.1'
gem 'indocker'

group :development, :test do
  gem 'rspec-rails', '3.3.2'
  gem 'rspec-its'
  gem 'spring'
  gem 'web-console', '~> 2.0'
  gem 'byebug'  
  gem 'guard-rspec', '4.5.0'
  gem 'libnotify', '0.8.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '2.1.0'
  gem 'childprocess'#, '0.3.6'
  gem 'spork', github: 'sporkrb/spork'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.4.0'
  gem 'factory_girl_rails', '4.2.1'
  gem 'cucumber-rails', '1.4.0', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
end

gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '~> 2.5.3'
gem 'jbuilder', '1.0.2'
gem 'bootstrap-sass'
gem 'bcrypt', '~> 3.1.7'
gem 'faker', '1.1.2'
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'


# bundle exec rake doc:rails generates the API under doc/api.
group :doc do
	gem 'sdoc', '~> 0.4.0', group: :doc
end

group :production do
  gem 'rails_12factor', '0.0.2'
end

