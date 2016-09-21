require 'nokogiri'
require 'open-uri'

books = Nokogiri::HTML(open('http://www.books.com.tw/activity/gold66_day/?loc=activity_BK_001'))

puts "### 搜尋..."

=begin
# 爬66折
books.css('div h1 a').each do |a|
	puts a.content
end
=end

#爬本月新加入

books.css('div.sec_1 a').each do |a|
	puts a.text()
end