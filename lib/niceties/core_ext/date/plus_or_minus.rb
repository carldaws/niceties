# frozen_string_literal: true

require "date"
require_relative "../../plus_or_minus"

class Date
  include Niceties::PlusOrMinus
end
