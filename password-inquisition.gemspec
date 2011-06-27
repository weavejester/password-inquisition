$:.push File.expand_path("../lib", __FILE__)
require "password_inquisition/version"

Gem::Specification.new do |s|
  s.name     = "password-inquisition"
  s.version  = Inquisition::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors  = ["James Reeves"]
  s.email    = ["jreeves@weavejester.com"]
  s.homepage = ""
  s.summary  = "A library for calculating password inquisition"

  s.add_development_dependency "rspec"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
