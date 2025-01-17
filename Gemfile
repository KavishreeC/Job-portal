# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'devise', '~> 4.7', '>= 4.7.3'
gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3', '~> 1.4'
gem 'pg'

gem 'pundit'
# gem "figaro"
# Use Puma as the app server
gem 'jwt'
gem 'puma', '~> 5.0'

gem 'simple_command'
# gem 'bootstrap'
# gem 'popper_js'
# gem 'kaminari'
# gem 'rabl'
# gem 'oj'
gem 'figaro'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'carrierwave', '~> 2.0'
gem 'elasticsearch', '~> 7.13', '>= 7.13.1'
gem 'friendly_id', '~> 5.4.0'
gem 'typhoeus', '~> 1.3.1'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
gem 'httparty', '~> 0.18.1'
gem 'rails-i18n', '~> 6.0'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end
gem 'byebug', platforms: %i[mri mingw x64_mingw]
group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # gem "letter_opener"
  gem 'brakeman'
  gem 'bullet', group: 'development'
  gem 'letter_opener', group: 'development'

  gem 'rubocop', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end
gem 'kaminari'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'font-awesome-rails'
