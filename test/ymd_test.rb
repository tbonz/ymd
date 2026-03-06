require "test_helper"

class YMDTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::YMD::VERSION
  end

  def test_it_outputs_year_month_day
    assert_equal("20190714", YMD.ymd)
  end

  def test_it_outputs_year_month_day_with_separator
    assert_equal("2019_07_14", YMD.ymd('_'))
  end

  def test_with_date_object
    date = Date.new(2023, 12, 25)
    assert_equal("20231225", YMD.ymd(date: date))
  end

  def test_with_date_object_and_separator
    date = Date.new(2023, 12, 25)
    assert_equal("2023-12-25", YMD.ymd('-', date: date))
  end

  def test_with_datetime_object
    datetime = DateTime.new(2023, 1, 15)
    assert_equal("20230115", YMD.ymd(date: datetime))
  end

  def test_with_time_object
    time = Time.new(2022, 6, 30)
    assert_equal("20220630", YMD.ymd(date: time))
  end

  def test_with_nil_date_uses_current_date
    assert_equal("20190714", YMD.ymd(date: nil))
  end

  def test_with_leap_year_date
    date = Date.new(2024, 2, 29)
    assert_equal("20240229", YMD.ymd(date: date))
  end

  def test_raises_on_invalid_date_type
    assert_raises(NoMethodError) do
      YMD.ymd(date: "2023-12-25")
    end
  end
end
