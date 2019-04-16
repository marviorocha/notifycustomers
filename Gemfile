source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'


gem 'rails', '~> 5.2.2', '>= 5.2.2.1'
gem 'puma'
gem 'sass-rails'
gem 'uglifier'

# My Gems

gem 'devise'
gem 'faker'
gem 'whenever'
gem 'onesignal'


# End My Gems

gem 'bootsnap'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do

  gem 'sqlite3'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
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
