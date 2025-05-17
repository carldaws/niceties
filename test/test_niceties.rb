# frozen_string_literal: true

require "test_helper"
require "ostruct"

class ObjectNicetiesTest < Minitest::Test
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

class ArrayNicetiesTest < Minitest::Test
  def test_tidy
    assert_equal [4], ["", nil, 4].tidy
  end
end

class NumericNicetiesTest < Minitest::Test
  def test_percent_of
    assert_equal 50, 25.percent_of(200)
    assert_equal 166, 16.6.percent_of(1000)
  end
end
