# frozen_string_literal: true

require "active_support/core_ext/object/blank"

class Array
  def tidy
    select { _1.present? }
  end
end
