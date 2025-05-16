# frozen_string_literal: true

require "test_helper"
require "ostruct"

class NicetiesTest < Minitest::Test
  def test_not_a
    username = "carldaws"

    assert username.not_a? Integer
  end

  def test_try_each
    user = OpenStruct.new(nickname: nil, username: "carldaws")
    assert_equal "carldaws", user.try_each(:nickname, :username)
  end

  def test_coalesce
    user = OpenStruct.new(nickname: "", username: "carldaws")
    assert_equal "carldaws", user.coalesce(:nickname, :username)
  end

  def test_coalesce_with_fallback
    user = OpenStruct.new(nickname: "", username: nil)
    assert_equal "carldaws", user.coalesce(:nickname, :username, "carldaws")
  end
end
