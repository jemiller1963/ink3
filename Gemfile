source 'https://rubygems.org'
git_source(:github) { |repo| 'https://github.com/{repo}.git' }

ruby '2.6.6'

gem 'gravatar_image_tag', '~> 1.2'
gem 'honeybadger', '~> 4.0'

gem 'acts_as_votable', '~> 0.11.1'
gem 'aws-sdk-s3', '~> 1.14'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'image_processing', '~> 1.2'
gem 'impressionist', '~> 1.6'
gem 'jbuilder', '~> 2.7'
gem 'mini_magick'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'redis', '~> 4.1', '>= 4.1.4'
gem 'sass-rails', '>= 6'
gem 'shrine', '~> 3.2'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'devise', '~> 4.7', '>= 4.7.1'
gem 'friendly_id', '~> 5.2', '>= 5.2.5'
gem 'rails', '~> 6.0', '>= 6.0.2.1'
gem 'sidekiq', '~> 5.2', '>= 5.2.7'

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.2'
  gem 'faker', '~> 1.9', '>= 1.9.4'
  gem 'pry', '~> 0.12.2'
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  gem 'spring-commands-rspec', '~> 1.0', '>= 1.0.4'
end

group :test do
  gem 'capybara-screenshot'
  gem 'database_cleaner', '~> 1.7'
  gem 'shoulda', '~> 3.6'
end
