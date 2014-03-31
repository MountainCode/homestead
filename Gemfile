source "https://rubygems.org"

# Declare your gem's dependencies in homestead.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'


# Dependencies for the dummy site
gem 'devise'
gem 'rails_admin'
gem 'therubyracer'
gem 'paperclip', '~> 4.1.1'
gem 'ransack', '~> 1.1.0'
gem 'draper', '~> 1.3.0'

group :test do
  gem 'cucumber', '1.3.2' # 1.3.2 is required as a fix to https://github.com/cucumber/cucumber-rails/issues/252
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
end
