# frozen_string_literal: true

require "active_support/core_ext/object/try"
require "active_support/core_ext/object/blank"

class Object
  def try_each(*methods)
    methods.each do |method|
      result = try(method)
      return result unless result.nil?
    end

    nil
  end

  def coalesce(*messages)
    *methods, fallback = messages

    methods.each do |method|
      result = try(method)
      return result if result.present?
    end

    fallback.is_a?(Symbol) ? try(fallback) : fallback
  end
end
