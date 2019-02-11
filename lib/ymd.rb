require "ymd/version"
require 'date'

module YMD
  def self.ymd(separator='')
    DateTime.now.strftime("%Y#{separator}%m#{separator}%d")
  end
end
