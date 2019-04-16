require 'open-uri'
require 'byebug'
require 'nokogiri'

url=('https://stackoverflow.com/')

page = Nokogiri::HTML(open(url))
header = page.css("div.-main")
title = header.text.strip

puts open(url).read(200)
puts " * "*20
puts "This is the raw header of the latest episode: #{header}" 
puts " * "*20
puts "This is the title of the latest episode: #{title}"

#byebug

#grab