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
i=1
question.each do |q|
  puts "#{i}--Quetion:  #{q}"
  i+=1  
end

puts " * "*20
i=1
question.each do |q|
  puts "#{i}--Title : #{q.text.strip}"
  i+=1
end

#byebug

#grab