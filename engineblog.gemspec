$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "engineblog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "engineblog"
  s.version     = Engineblog::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Engineblog."
  s.description = "TODO: Description of Engineblog."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.4"
  s.add_dependency 'jquery-rails'
  s.add_dependency "RedCloth", "~> 4.2.9"
  
  s.add_development_dependency 'jquery-rails'
  s.add_development_dependency "sqlite3"
end
