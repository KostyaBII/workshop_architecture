source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.7'

gem 'rails', '>= 8.0.1'
gem 'puma', '>= 6.5.0'

# Базы данных
gem 'pg'
gem 'mongoid', '~> 8.0'
gem 'bson_ext'

# Многопоточное выполнение
gem 'parallel'
gem 'activerecord-import'

# Обеспечение работы представлений и JavaScript
gem 'sprockets-rails'
gem 'slim-rails'

# Распаковка архивов
gem 'rubyzip', require: 'zip'

# Управление бизнес-логикой
gem 'dry-initializer'
gem 'dry-types'
gem 'kaminari'
gem 'kaminari-mongoid'
gem 'alba'

# Конфигурирование приложения
gem 'config'

# Система администрирования
gem 'activeadmin'
gem 'activeadmin_addons'
gem 'devise'

# Queue broker
gem 'karafka', '~> 2.0'

group :development, :test do
  gem 'bundler-audit'
  gem 'capybara'
  gem 'database_consistency', require: false
  gem 'debug', platforms: %i[ mri windows ], require: 'debug/prelude'
  gem 'dotenv'
  gem 'fasterer'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rails-omakase', require: false
  gem 'rspec-rails', '>= 7.1'
  gem 'simplecov', require: false
  gem 'shoulda-matchers'
  gem 'pry-rails'
  gem 'pry-byebug'
end

group :development do
  gem 'web-console'
end
