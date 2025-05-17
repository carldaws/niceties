# frozen_string_literal: true

# Niceties for the Integer class
class Integer
  def percent_of(other)
    (other / 100.0) * to_f
  end
end
