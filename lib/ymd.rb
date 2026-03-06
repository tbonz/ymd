require "ymd/version"
require 'date'

module YMD
  def self.ymd(separator = '', date: nil)
    target_date = date || DateTime.now
    target_date.strftime("%Y#{separator}%m#{separator}%d")
  end
end
