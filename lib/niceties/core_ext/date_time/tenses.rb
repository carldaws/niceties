# frozen_string_literal: true

require "date"
require_relative "../time/tenses"

class DateTime
  include Time::Tenses
end
