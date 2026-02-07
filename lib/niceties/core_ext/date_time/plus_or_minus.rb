# frozen_string_literal: true

require "date"
require_relative "../numeric/plus_or_minus"

class DateTime
  include Numeric::PlusOrMinus
end
