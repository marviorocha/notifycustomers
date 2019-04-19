source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'


gem 'rails'
gem 'puma'
gem 'sass-rails'
gem 'uglifier'

# My Gems

gem 'devise'
gem 'faker'
gem 'whenever'
gem 'onesignal'

# End My Gems
gem 'bootsnap', require: false

group :development, :test do
  gem 'pry'
end

group :development do

  gem 'sqlite3'
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'

end


group :test do

  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end
