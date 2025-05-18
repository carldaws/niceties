# frozen_string_literal: true

require "date"
require "active_support/core_ext/object/try"
require "active_support/core_ext/object/blank"
require_relative "niceties/version"
require_relative "niceties/plus_or_minus"
require_relative "niceties/not_a"
require_relative "niceties/try_each"
require_relative "niceties/percent_of"
require_relative "niceties/tidy"

# See included modules for implementations
module Niceties
end

class Object
  include Niceties::NotA
  include Niceties::TryEach
end

class Array
  include Niceties::Tidy
end

class Numeric
  include Niceties::PlusOrMinus
  include Niceties::PercentOf
end

class Time
  include Niceties::PlusOrMinus
end

class Date
  include Niceties::PlusOrMinus
end

class DateTime
  include Niceties::PlusOrMinus
end
