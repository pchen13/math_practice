source 'https://rubygems.org'

gem 'rails', '4.0.0'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'haml-rails'
gem 'anjlab-bootstrap-rails', '>= 3.0.0.0'

group :doc do
  gem 'sdoc', require: false
end
group :production do
  gem 'pg'
end
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem "capybara", "~> 2.1.0"
  gem 'factory_girl_rails', "~> 4.2.1"
  gem 'simplecov'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-livereload'
  gem 'guard-rspec'
  gem 'guard-cucumber'
end