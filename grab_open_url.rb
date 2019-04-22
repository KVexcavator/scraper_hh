require 'open-uri'
require 'byebug'
require 'nokogiri'

url=('https://stackoverflow.com/')

page = Nokogiri::HTML(open(url))
question = page.css("div.question-summary narrow","a.question-hyperlink")

puts open(url).read(200)
puts " * "*20
puts "Total quetions on this page: # #{question.count}"
puts " * "*20

question.each_with_index do |q,i|
  puts "#{i+1}--Quetion:  #{q}"
end

puts " * "*20

question.each_with_index do |q,i|
  puts "#{i+1}--Title : #{q.text.strip}"
end

#byebug

#grab