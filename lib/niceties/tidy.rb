# frozen_string_literal: true

module Niceties
  # Niceties for removing blanks from Arrays
  module Tidy
    def tidy
      select { it.present? }
    end
  end
end
