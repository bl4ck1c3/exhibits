source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# pending fix for https://github.com/rails/rails/pull/21804, due in 4.2.5?
gem 'rails', '4.2.2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 2.7.2'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
group :deployment do
  gem 'capistrano', '~> 3.0'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-passenger'
  gem 'dlss-capistrano'
end

group :development, :test do
  gem 'jettywrapper'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  gem 'rspec-rails'
  gem 'factory_girl'
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
end

group :production do
  gem 'mysql2', '~> 0.3.20'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby
end

gem 'squash_ruby', require: 'squash/ruby'
gem 'squash_rails', require: 'squash/rails'

gem 'config'

gem 'bootstrap-sass', '~> 3.3.5'

gem 'blacklight', '~> 5.15'
gem 'blacklight-gallery', '~> 0.3'
gem 'blacklight-maps', '0.2.0'
gem 'blacklight-spotlight', '~> 0.5'

gem 'spotlight-dor-resources'
gem 'devise'
gem 'devise-guests', '~> 0.3'
gem 'devise-remote-user'
gem 'rack-dev-mark'
gem 'turnout'
gem 'whenever'
gem 'ruby-oembed'
gem 'is_it_working-cbeer'
gem 'friendly_id'
gem 'social-share-button'
gem 'sitemap_generator'
gem 'delayed_job'
gem 'delayed_job_active_record'
gem 'sucker_punch'
