source 'https://rubygems.org'

# country select for sign up form
gem 'country_select', github: 'stefanpenner/country_select'
gem 'bootstrap-sass',       '3.2.0.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc


group :production do
  gem 'pg'
  gem 'rails_12factor'
end


group :development do
  # Spring speeds up development by keeping your application running in the background.
  #> https://github.com/rails/spring
  gem 'spring'
  gem 'sqlite3'


  # Better Errors replaces the standard Rails error page with a much better and more useful error page.
  #> https://github.com/charliesome/better_errors
  gem 'better_errors'
  gem 'binding_of_caller'  # adding REPL

  # RailsPanel is a Chrome extension for Rails development that will end your tailing of development.log
  # Have all information about your Rails app requests right there in the Developer Tools panel.
  # Provides insight to db/rendering/total times, parameter list, rendered views, text editor integration and more.
  #> https://chrome.google.com/webstore/detail/railspanel/gjpfobpafnhjhbajcjgccbbdofdckggg
  gem 'meta_request'

  # Pry is a powerful alternative to the standard IRB shell for Ruby. It features syntax highlighting, a flexible
  # plugin architecture, runtime invocation and source and documentation browsing.
  #> http://pryrepl.org/
  gem 'pry'

  # Rails console opens pry
  #> https://github.com/rweng/pry-rails
  gem 'pry-rails'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0'
  gem 'capybara', '~> 2.3.0'
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'devise'
