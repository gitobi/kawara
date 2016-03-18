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
  s.add_dependency 'refile', '~> 0'
  s.add_dependency 'refile-mini_magick', '~> 0'
  s.add_dependency 'refile-s3', '~> 0'
  s.add_dependency 'awesome_nested_set', '~> 0'

  s.add_development_dependency 'rspec-rails', '~> 0'
  s.add_development_dependency 'factory_girl_rails', '~> 0'
  s.add_development_dependency 'ammeter', '~> 0'
  s.add_development_dependency 'temping', '~> 0'
  s.add_development_dependency 'shoulda-matchers', '~> 0'
  s.add_development_dependency 'sqlite3', '~> 0'
  s.add_development_dependency 'rspec_junit_formatter', '= 0.2.2'
end
