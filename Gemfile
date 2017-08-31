source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.2'
gem 'pg', '~> 0.21.0'
gem 'puma', '~> 3.7'
gem 'jbuilder', '~> 2.5'

gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'

gem 'rack-cors', require: 'rack/cors'
gem 'devise', '~> 4.3'
gem 'simple_token_authentication', '~> 1.15', '>= 1.15.1'
gem 'graphql', '~> 1.6', '>= 1.6.7'
gem 'graphiql-rails', '~> 1.4', '>= 1.4.4'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry', '~> 0.10.4'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
