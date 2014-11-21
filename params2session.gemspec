$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "params2session/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "params2session"
  s.version     = Params2session::VERSION
  s.authors     = ["denispeplin"]
  s.email       = ["denis.peplin@gmail.com"]
  s.homepage    = "https://github.com/denispeplin/params2session"
  s.summary     = "Save params to session"
  s.description = "Save and manipulate saved params on per-controller basis"

  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
end
