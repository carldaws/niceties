# frozen_string_literal: true

module Niceties
  # Niceties for creating ranges
  module PlusOrMinus
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
end
