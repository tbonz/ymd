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
end
