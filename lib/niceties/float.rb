# frozen_string_literal:  true

# Niceties for the Float class
class Float
  def percent_of(other)
    (other / 100.0) * self
  end
end
