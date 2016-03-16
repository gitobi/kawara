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
  s.description = "Mountable blog engine"
  s.license     = "MIT"

  s.files      = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '~> 4.2.6'
  s.add_dependency 'kramdown', '~> 1.10.0'
  s.add_dependency 'refile'
  s.add_dependency 'refile-mini_magick'
  s.add_dependency 'refile-s3'
  s.add_dependency 'awesome_nested_set'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'ammeter'
  s.add_development_dependency 'temping'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec_junit_formatter', '= 0.2.2'
end
