# frozen_string_literal: true

class Numeric
  def percent_of(other)
    (other / 100.0) * to_f
  end
end
