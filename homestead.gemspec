$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'homestead/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'homestead'
  s.version     = Homestead::VERSION
  s.authors     = ['Chris Kentfield']
  s.email       = ['chris@mtncode.com']
  s.homepage    = 'http://www.mtncode.com'
  s.summary     = "homestead-#{Homestead::VERSION}"
  s.description = 'Real estate engine for Rails'
  s.test_files  = Dir['spec/**/*']

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 4.0.0'
  s.add_dependency 'draper'
  
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails', '~> 4.0.0'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'countries'
end
