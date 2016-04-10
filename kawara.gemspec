$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kawara/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kawara"
  s.version     = Kawara::VERSION
  s.authors     = ["Rui Onodera"]
  s.email       = ["deraru@gmail.com"]
  s.homepage    = "https://github.com/gitobi/kawara"
  s.summary     = "Mountable blog engine"
  s.description = "Mountable blog engine for Rails application"
  s.license     = "MIT"

  s.files      = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '~> 4.2', '>= 4.2.6'
  s.add_dependency 'kramdown', '~> 1.10', '>= 1.10.0'
  s.add_dependency 'refile', '~> 0.6', '>= 0.6.2'
  s.add_dependency 'refile-mini_magick', '~> 0.2', '>= 0.2.0'
  s.add_dependency 'refile-s3', '~> 0.2', '>= 0.2.0'
  s.add_dependency 'awesome_nested_set', '~> 3.0', '>= 3.0.3'
  s.add_dependency 'friendly_id', '~> 5.1', '>= 5.1.0'
  s.add_dependency 'subdomain_validation', '~> 0.2', '>= 0.2.0'

  s.add_development_dependency 'seed-fu', '~> 2.3', '>= 2.3.5'
  s.add_development_dependency 'ffaker', '~> 2.2', '>= 2.2.0'
  s.add_development_dependency 'rspec-rails', '~> 3.4', '>= 3.4.2'
  s.add_development_dependency 'factory_girl_rails', '~> 4.6', '>= 4.6.0'
  s.add_development_dependency 'ammeter', '~> 1.1', '>= 1.1.3'
  s.add_development_dependency 'temping', '~> 3.3', '>= 3.3.0'
  s.add_development_dependency 'shoulda-matchers', '~> 3.1', '>= 3.1.1'
  s.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.11'
  s.add_development_dependency 'rspec_junit_formatter', '= 0.2.2'
end
