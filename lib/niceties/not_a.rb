# frozen_string_literal: true

module Niceties
  # Niceties for determining object classes
  module NotA
    def not_a?(klass)
      !is_a?(klass)
    end
  end
end
