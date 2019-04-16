require 'open-uri'

puts open('https://stackoverflow.com/').read(200)

byebug

grab