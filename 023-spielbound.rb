require 'rubygems'
require 'open-uri'
require 'pry'
require 'nokogiri'

puts "What game would you like to search for?"

query = gets.chomp

urlFull = "http://www.spielbound.org/library?title=" + query + "&field_playing_time_min__value=&p=All&min=All&max=All&rating=All&sort_by=title&sort_order=ASC"

doc = Nokogiri::HTML(open(urlFull))

titlelist = doc.css('h2.name')
titlelist.each do |x|
	puts x.text
end