# frozen_string_literal: true

require "date"
require_relative "../../plus_or_minus"

class DateTime
  include Niceties::PlusOrMinus
end
