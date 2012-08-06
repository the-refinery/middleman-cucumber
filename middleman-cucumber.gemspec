# -*- encoding: utf-8 -*-
require File.expand_path('../lib/middleman-cucumber/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Joe Fiorini"]
  gem.email         = ["joe@d-i.co"]
  gem.description   = %q{Uses Capybara's configuration to run Cucumber tests against a Middleman Rack app. All Cucumber tests are run in the "test" environment.}
  gem.summary       = %q{Configuration for running Cucumber tests against your Middleman app.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "middleman-cucumber"
  gem.require_paths = ["lib"]
  gem.version       = Middleman::Cucumber::VERSION

  gem.add_dependency "middleman-more"
  gem.add_dependency "cucumber", "~> 1.2.1"
end
