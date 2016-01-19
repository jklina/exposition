$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "exposition/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "exposition"
  s.version     = Exposition::VERSION
  s.authors     = ["Josh Klina"]
  s.email       = ["joshua.klina@gmail.com"]
  s.homepage    = "http://joshklina.com"
  s.summary     = "A very boring and simple blog engine for Rails."
  s.description = "A very simple and boring blogging engine for Rails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.5"
  s.add_dependency "pg"
  s.add_dependency "haml-rails", "~> 0.9"
  s.add_dependency 'bourbon', "~> 4.2"
  s.add_dependency 'neat', "~> 1.7.2"
  s.add_dependency 'bitters'
  s.add_dependency 'bcrypt', '~> 3.1'
  s.add_dependency 'high_voltage', '~> 2.3.0'
  s.add_dependency 'redcarpet', '~> 3.0'
  s.add_dependency 'rouge', '~> 1.8.0'
  s.add_dependency 'kaminari', '~> 0.16'
  s.add_dependency 'categorical'
  s.add_dependency 'human_urls'
  s.add_dependency 'uglifier'

  s.add_development_dependency "pry-rails"
  s.add_development_dependency 'rspec-rails', '~> 3.0'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails', '~> 4.0'
  s.add_development_dependency "shoulda-matchers", '~> 2.8'
  s.add_development_dependency "database_cleaner", '~> 1.4'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'launchy'
end
