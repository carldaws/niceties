# frozen_string_literal: true

require "date"
require_relative "../time/tenses"

class Date
  include Time::Tenses
end
