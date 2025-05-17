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

  def test_tidy
    my_array = ["", nil, 4]

    assert_equal [4], my_array.tidy
  end

  def test_percent_of_integer
    assert_equal 50, 25.percent_of(200)
    assert_equal 0, 0.percent_of(200)
    assert_equal 400, 200.percent_of(200)
    assert_equal 0, 50.percent_of(0)
  end

  def test_percent_of_float
    assert_equal 25.5, 50.0.percent_of(51)
    assert_equal 166, 16.6.percent_of(1000)
    assert_equal 0, 123.4.percent_of(0)
  end
end
