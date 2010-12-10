# -*- encoding: utf-8 -*-
require File.expand_path("../lib/noodall/components/general_content/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "noodall-components-general-content"
  s.version     = Noodall::Components::GeneralContent::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = []
  s.email       = []
  s.homepage    = "http://rubygems.org/gems/noodall-components-general-content"
  s.summary     = "Noodall Components: General Content"
  s.description = "A text and image component for Noodall"

  s.required_rubygems_version = ">= 1.3.6"
#  s.rubyforge_project         = "noodall-component-gallery"

  s.add_dependency "noodall-ui", ">= 0.0.15"

  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
