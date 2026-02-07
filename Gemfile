# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in niceties.gemspec
gemspec

# Allow CI to override ActiveSupport version
if ENV["ACTIVESUPPORT_VERSION"]
  gem "activesupport", "~> #{ENV["ACTIVESUPPORT_VERSION"]}"
end

gem "irb"
gem "rake", "~> 13.0"

gem "minitest", "~> 5.16"
gem "ostruct"

gem "rubocop", "~> 1.21"
