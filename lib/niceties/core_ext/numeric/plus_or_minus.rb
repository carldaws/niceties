# frozen_string_literal: true

module Numeric::PlusOrMinus
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

class Numeric
  include Numeric::PlusOrMinus
end
