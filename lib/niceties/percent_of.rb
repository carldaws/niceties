# frozen_string_literal: true

module Niceties
  # Niceties for calculating percentages
  module PercentOf
    def percent_of(other)
      (other / 100.0) * to_f
    end
  end
end
