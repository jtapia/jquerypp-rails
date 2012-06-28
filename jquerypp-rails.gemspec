# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquerypp/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "jquerypp-rails"
  s.version     = Jquerypp::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jonathan Tapia"]
  s.email       = ["jonathan.tapia@crowdint.com"]
  s.homepage    = "http://rubygems.org/gems/jquerypp-rails"
  s.summary     = "Use jQuery++ with Rails 3"
  s.description = "This gem provides jQuery++ for your Rails 3 application."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "jquerypp-rails"

  s.add_dependency "jquery-rails",     "~> 2.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = 'lib'
end