source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'bootstrap-sass'
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3'
end
#Added Postgres support
group :production do
  gem 'pg'
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.2'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'



#Added rspec support
group :development, :test do
  gem 'rspec-rails',      ">= 2.0.0.beta"
end

group :test do
  gem 'capybara', '1.1.2'
end

group :development do
  gem 'annotate', '2.5.0'
end