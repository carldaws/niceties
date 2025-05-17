# frozen_string_literal: true

# Niceties for the Array class
class Array
  def tidy
    select { it.present? }
  end
end
