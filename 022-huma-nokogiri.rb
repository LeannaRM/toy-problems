require 'rubygems'
require 'open-uri'
require 'pry'
require 'nokogiri'

doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Huma_bird"))
introduction = doc.css('p').first #nokogiri node
introText = introduction.text
binding.pry