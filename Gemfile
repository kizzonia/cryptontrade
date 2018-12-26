source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


ruby '~> 2.5.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
 gem 'therubyracer', platforms: :ruby
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jquery-turbolinks'
gem "simple_form"
gem 'devise', github: 'plataformatec/devise'
gem 'friendly_id'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'ckeditor', github: 'galetahub/ckeditor'
gem 'jquery-rails'
gem 'sitemap_generator'
gem 'social-share-button', '~> 0.1.6'
gem 'activeadmin', github: 'activeadmin'
gem 'pg', '>= 0.18', '< 2.0'
gem "bittrex_ruby"

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0', :require => "bcrypt"

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem "mail_form", ">= 1.3.0"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end
group :production do
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
