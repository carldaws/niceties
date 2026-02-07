# frozen_string_literal: true

require "active_support/core_ext/time/calculations"

module Time::Tenses
  def future?
    self > Time.current
  end

  def past?
    self < Time.current
  end
end

class Time
  include Time::Tenses
end
