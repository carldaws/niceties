# frozen_string_literal: true

class Object
  def not_a?(klass)
    !is_a?(klass)
  end
end
