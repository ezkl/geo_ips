# -*- encoding: utf-8 -*-
require File.expand_path('../lib/geo_ips/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ezekiel Templin"]
  gem.email         = ["zeke@templ.in"]
  gem.description   = %q{Ruby library to access the GeoIPs.com IP geo-location API}
  gem.summary       = %q{Simple library to lookup IP geo-location information with the GeoIPs.com API.}
  gem.homepage      = "https://github.com/ezkl/geo_ips"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "geo_ips"
  gem.require_paths = ["lib"]
  gem.version       = GeoIPs::VERSION
  
  gem.add_runtime_dependency("typhoeus", "~> 0.3.3")
  gem.add_runtime_dependency("multi_json")
  
  gem.add_development_dependency("rspec", "~> 2.8.0")
  gem.add_development_dependency("autotest")
  gem.add_development_dependency("vcr", "2.0.0rc2")
end
