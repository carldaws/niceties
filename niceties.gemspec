# frozen_string_literal: true

require_relative "lib/niceties/version"

Gem::Specification.new do |spec|
  spec.name          = "niceties"
  spec.version       = Niceties::VERSION
  spec.authors       = ["Carl Dawson"]
  spec.email         = ["email@carldaws.com"]

  spec.summary       = "A collection of thoughtful Ruby and Rails helpers."
  spec.description   = "Niceties is a carefully curated set of ergonomic Ruby and Rails extensions—small, expressive methods that make code feel more natural and joyful to write."

  spec.homepage      = "https://github.com/carldaws/niceties"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"]   = "https://rubygems.org"
  spec.metadata["homepage_uri"]        = spec.homepage
  spec.metadata["source_code_uri"]     = "https://github.com/carldaws/niceties"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match?(%r{^(test|spec|features|Gemfile|Rakefile|\.git|\.github)/}) ||
        f == File.basename(__FILE__)
    end
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 6.0"
end
