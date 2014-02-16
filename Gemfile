source 'http://rubygems.org'

gem 'rails', '3.2.9'
gem 'sqlite3'
gem 'strong_parameters'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails'
  gem 'sass-rails'
  gem 'uglifier'
  gem 'anjlab-bootstrap-rails', '>= 2.1', :require => 'bootstrap-rails'
  gem 'therubyracer', :platforms => :ruby
end

gem 'active_model_serializers', github: 'rails-api/active_model_serializers'
gem 'jquery-rails'
gem 'ember-rails'
gem 'ember-source', '~> 1.4.0'
gem 'ember-data-source', '~> 1.0.0.beta.6'

group :test, :development do
  gem 'minitest'
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'
  gem 'capybara'
  gem 'konacha'
  gem 'poltergeist'
  gem 'libv8', '~> 3.11.8.17'
end

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3'
end
