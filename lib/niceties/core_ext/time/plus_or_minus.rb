# frozen_string_literal: true

require_relative "../numeric/plus_or_minus"

class Time
  include Numeric::PlusOrMinus
end
