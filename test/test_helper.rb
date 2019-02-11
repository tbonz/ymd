$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "ymd"

require "minitest/autorun"

require "timecop"

new_time = Time.local(2019, 7, 14)
Timecop.freeze(new_time)