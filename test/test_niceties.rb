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

  def test_plus_or_minus
    assert_equal 3..7, 5.plus_or_minus(2)
  end

  def test_plus_upto
    assert_equal 5..7, 5.plus_upto(2)
  end

  def test_minus_upto
    assert_equal 3..5, 5.minus_upto(2)
  end
end

class TimeNicetiesTest < Minitest::Test
  def test_plus_or_minus
    my_time = Time.now

    assert_equal my_time.plus_or_minus(5.minutes), (my_time - 5.minutes)..(my_time + 5.minutes)
  end

  def test_plus_upto
    my_time = Time.now

    assert_equal my_time.plus_upto(5.minutes), my_time..(my_time + 5.minutes)
  end

  def test_minus_upto
    my_time = Time.now

    assert_equal my_time.minus_upto(5.minutes), (my_time - 5.minutes)..my_time
  end
end

class DateNicetiesTest < Minitest::Test
  def test_plus_or_minus
    my_date = Date.today

    assert_equal my_date.plus_or_minus(2.days), (my_date - 2.days)..(my_date + 2.days)
  end

  def test_plus_upto
    my_date = Date.today

    assert_equal my_date.plus_upto(2.days), my_date..(my_date + 2.days)
  end

  def test_minus_upto
    my_date = Date.today

    assert_equal my_date.minus_upto(2.days), (my_date - 2.days)..my_date
  end
end
