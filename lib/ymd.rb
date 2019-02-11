require "ymd/version"

module YMD
  def ymd(separator='')
	  DateTime.now.strftime("%Y#{separator}%m#{separator}%d")
	end
end
