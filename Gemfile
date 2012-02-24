
source 'https://rubygems.org'

gem 'rails', '3.2.1'
# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '3.0.1'

gem 'will_paginate', '3.0.2'

group :production, :staging do 
#  gem 'sqlite3', '1.3.5'   # to test on desktop
  gem 'pg'   # for heroku
end 

group :development, :test do   
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails' # , '2.8.1'

  gem 'annotate', '~> 2.4.1.beta'     # from rails 3.2 on-line book
  gem 'faker', '0.3.1'             # from rails 3.1 book addendum
end 

group :test do   
  #  gem 'webrat', '0.7.1'  # remove for use of capybara
  gem 'capybara', '1.1.2'
  gem 'spork', '0.9.0.rc8'
  gem 'factory_girl_rails', '1.0'   # from rails 3.1 book addendum

  gem 'autotest', '4.4.6'
  gem 'autotest-rails-pure', '4.1.2'
  gem 'autotest-growl', '0.2.9'
end 

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'closure-compiler'   # to fix rake assets:precompile problem
 # http://stackoverflow.com/questions/7877180/ror-precompiling-assets-fail-while-rake-assetsprecompile-on-basically-empty-a

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
