$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mobile_fu/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mobile_fu"
  s.version     = MobileFu::VERSION
  s.authors     = ["fyodor"]
  s.email       = ["dstyvsky@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of MobileFu."
  s.description = "TODO: Description of MobileFu."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
end
