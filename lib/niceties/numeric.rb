# frozen_string_literal: true

# Niceties for the Numeric class
class Numeric
  def percent_of(other)
    (other / 100.0) * to_f
  end

  def plus_or_minus(amount)
    (self - amount)..(self + amount)
  end

  def plus_upto(amount)
    self..(self + amount)
  end

  def minus_upto(amount)
    (self - amount)..self
  end
end
