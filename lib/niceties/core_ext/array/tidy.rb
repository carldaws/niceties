# frozen_string_literal: true

require "active_support/core_ext/object/blank"

class Array
  def tidy
    select(&:present?)
  end
end
